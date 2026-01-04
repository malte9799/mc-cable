import re
import json
from beet import Context, Function, ResourcePack
from pathlib import PurePath
from pack_format_registry import PackFormatRegistry
from typing import Tuple

def set_meta(ctx: Context):
    min_version = ctx.meta["min_version"]
    max_version = ctx.meta["max_version"]

    # smithed versioning
    ctx.meta["smithed"] = {"versioning": {"schema": ["major", "minor"],"scheduled_paths": "impl/tick","lantern_load": {"step": "load","tag_path": "load","function_path": "impl/load",},"refactor": {"match": "{{ project_id }}:*","find": "{{ project_id }}:impl/","replace": "{{ project_id }}:v{{ version }}/",},"api": {"match": "{{ project_id }}:v{{ version }}","implementation_prefix": "{{ project_id }}:v{{ version }}/","version_check_path": "v{{ version }}/calls","tag_path": "calls"}}}
    # Mecha commands
    for version in PackFormatRegistry.between(min_version, max_version):
        ctx.meta.setdefault("mecha", {})\
                .setdefault("commands", [])\
                .append(f"https://raw.githubusercontent.com/misode/mcmeta/{PackFormatRegistry.get(version).name}-summary/commands/data.json")
        
    yield # wait for exit phase

    # Pack formats
    resource_min = [PackFormatRegistry.get(min_version).resource_pack_version, PackFormatRegistry.get(min_version).resource_pack_version_minor]
    resource_max = [PackFormatRegistry.get(max_version).resource_pack_version, PackFormatRegistry.get(max_version).resource_pack_version_minor]
    ctx.assets.pack_format = resource_max[0]
    ctx.assets.min_format = resource_min
    ctx.assets.max_format = resource_max
    ctx.assets.supported_formats = [resource_min[0], resource_max[0]]

    data_min = [PackFormatRegistry.get(min_version).data_pack_version, PackFormatRegistry.get(min_version).data_pack_version_minor]
    data_max = [PackFormatRegistry.get(max_version).data_pack_version, PackFormatRegistry.get(max_version).data_pack_version_minor]
    ctx.data.pack_format = data_max[0]
    ctx.data.min_format = data_min
    ctx.data.max_format = data_max
    ctx.data.supported_formats = [data_min[0], data_max[0]]


# overlay
def vtuple(v: str) -> tuple[int, ...]:
    """Convert a version string like '1.18.2' to a tuple of ints (1, 18, 2) for comparison."""
    return tuple(map(int, v.split(".")))

overlay_block_pattern = re.compile(
    r"(?P<if_line>^[ \t]*@if[ \t]+MC[ \t]*(?P<mode><=|<|=|>|>=)[ \t]*(?P<version>[0-9.]+)[ \t]*\n)"
    r"(?P<if_body>.*?)"
    r"(?:(?P<else_line>^[ \t]*@else[ \t]*\n)(?P<else_body>.*?))?"
    r"(?P<endif_line>^[ \t]*@endif[ \t]*$)",
    re.MULTILINE | re.DOTALL,
)

def beet_default(ctx: Context):
    for _, function in ctx[Function]:
        # add `raw` to lines with @if/@else/@endif (for mecha)
        function.text = re.sub(
            r'(?m)^([ \t]*)@(if .*|else|endif)(.*)$',
            lambda m: f"{m[1]}raw @{m[2]}{m[3]}",
            function.text
        )

    yield # wait for exit phase (after mecha)

    min_v = ctx.meta["min_version"]
    max_v = ctx.meta["max_version"]

    all_overlays = []
    for path, function in ctx[Function]:
        overlays = []
        for match in overlay_block_pattern.finditer(function.text):
            mode = match.group("mode")
            version = match.group("version")
            if mode == "<":
                overlays.append(f"..{PackFormatRegistry.prev(version).id}")
            elif mode == "<=":
                overlays.append(f"..{version}")
            elif mode == "=":
                if not vtuple(version) == vtuple(max_v):
                    overlays.append(f"{version}")
            elif mode == ">=":
                overlays.append(f"..{PackFormatRegistry.prev(version).id}")
            elif mode == ">":
                overlays.append(f"..{version}")
        all_overlays.append(overlays)
        for overlay in overlays:
            version = overlay.replace("..", "")
            overlay_gen = ctx.generate.overlays[overlay]
            # del ctx.assets.overlays[overlay]

            min_format = min_v if overlay.startswith("..") else version
            max_format = max_v if overlay.endswith("..") else version

            overlay_gen.assets.min_format = [PackFormatRegistry.get(min_format).resource_pack_version, PackFormatRegistry.get(min_format).resource_pack_version_minor]
            overlay_gen.assets.max_format = [PackFormatRegistry.get(max_format).resource_pack_version, PackFormatRegistry.get(max_format).resource_pack_version_minor]
            overlay_gen.assets.supported_formats = [PackFormatRegistry.get(min_format).resource_pack_version, PackFormatRegistry.get(max_format).resource_pack_version]
            
            overlay_gen.data.min_format = [PackFormatRegistry.get(min_format).data_pack_version, PackFormatRegistry.get(min_format).data_pack_version_minor]
            overlay_gen.data.max_format = [PackFormatRegistry.get(max_format).data_pack_version, PackFormatRegistry.get(max_format).data_pack_version_minor]
            overlay_gen.data.supported_formats = [PackFormatRegistry.get(min_format).data_pack_version, PackFormatRegistry.get(max_format).data_pack_version]

            with overlay_gen.push():
                ctx.generate(path, Function(comment_for_version(function.text, version)))

        function.text = comment_for_version(function.text, max_v)


def comment_for_version(text: str, my_version: str) -> str:
    def replacer(match):
        if_line = match.group("if_line")
        mode = match.group("mode")
        version = match.group("version")
        if_body = match.group("if_body")
        else_line = match.group("else_line") or ""
        else_body = match.group("else_body") or ""
        endif_line = match.group("endif_line")

        v = vtuple(version)
        max_v = vtuple(my_version)

        # Evaluate condition
        if mode == "<":
            result = max_v < v
        elif mode == "<=":
            result = max_v <= v
        elif mode == "=":
            result = max_v == v
        elif mode == ">=":
            result = max_v >= v
        elif mode == ">":
            result = max_v > v

        commented_if = ("\n".join(f"# {line}" for line in if_body.splitlines()) + "\n") if if_body else ""
        commented_else = ("\n".join(f"# {line}" for line in else_body.splitlines()) + "\n") if else_body else ""

        if result:
            return f"#>{if_line}{if_body}{"#>" if else_line else ""}{else_line}{commented_else}#>{endif_line}"
        else:
            return f"#>{if_line}{commented_if}{"#>" if else_line else ""}{else_line}{else_body}#>{endif_line}"
        

    return overlay_block_pattern.sub(replacer, text)


def remove_empty_files(ctx: Context):
    for path in ctx.data.functions.match("*"):
        function = ctx.data.functions[path]
        if not function.text.strip():
            ctx.data.functions.pop(path)

# @property
# def modified_suffixes(self):
#     """
#     A list of the final component's suffixes, if any.

#     These include the leading periods. For example: ['.tar', '.gz']
#     """    
#     name = self.name
#     if 'TEMPLATE' in name:
#         return []
#     elif name==".mcfunction":
#         return [name]
#     else:
#         if name.endswith('.'):
#             return []
#         name = name.lstrip('.')    
#         return ['.' + suffix for suffix in name.split('.')[1:]]

# def allow_function_without_name(ctx: Context):
#     PurePath.suffixes = modified_suffixes

# def minify_functions(ctx: Context):
#     for _, function in ctx[Function]:
#         text = function.text
#         while "\n\n\n" in text:
#             text = text.replace("\n\n\n", "\n\n")
#         function.text = text.strip("\n")

# def comment(ctx: Context):
#     for _, function in ctx[Function]:
#         text = function.text
        
#         text = re.sub(r'^(\s*)#', r'\1raw #', text, flags=re.MULTILINE)

#         function.text = text.strip("\n")

# from datetime import datetime
# import sys
# def done_message(ctx: Context):
#     yield
#     time = datetime.now().strftime('%H:%M:%S')
#     sys.stdout.write('\033[A')
#     print(f'\033[94m\033[4m{time}')
