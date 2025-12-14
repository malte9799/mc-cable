import re
from beet import Context, Function
from pathlib import PurePath

@property
def modified_suffixes(self):
    """
    A list of the final component's suffixes, if any.

    These include the leading periods. For example: ['.tar', '.gz']
    """    
    name = self.name
    if 'TEMPLATE' in name:
        return []
    elif name==".mcfunction":
        return [name]
    else:
        if name.endswith('.'):
            return []
        name = name.lstrip('.')    
        return ['.' + suffix for suffix in name.split('.')[1:]]

def allow_function_without_name(ctx: Context):
    PurePath.suffixes = modified_suffixes

def minify_functions(ctx: Context):
    for _, function in ctx[Function]:
        text = function.text
        while "\n\n\n" in text:
            text = text.replace("\n\n\n", "\n\n")
        function.text = text.strip("\n")

def comment(ctx: Context):
    for _, function in ctx[Function]:
        text = function.text
        
        text = re.sub(r'^(\s*)#', r'\1raw #', text, flags=re.MULTILINE)

        function.text = text.strip("\n")

from datetime import datetime
import sys
def done_message(ctx: Context):
    yield
    time = datetime.now().strftime('%H:%M:%S')
    sys.stdout.write('\033[A')
    print(f'\033[94m\033[4m{time}')

def remove_empty_files(ctx: Context):
    for path in ctx.data.functions.match("*"):
        function = ctx.data.functions[path]
        if not function.text.strip():
            ctx.data.functions.pop(path)