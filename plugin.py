from beet import Context, Function
from pathlib import PurePath

@property
def modified_suffixes(self):
    """
    A list of the final component's suffixes, if any.

    These include the leading periods. For example: ['.tar', '.gz']
    """    
    name = self.name
    if name==".mcfunction":
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
        # replace triple \n with double \n until there are no triple \n
        while "\n\n\n" in text:
            text = text.replace("\n\n\n", "\n\n")
        # add a \n at the end of the file
        text = text.strip("\n") + "\n"
        function.text = text

from datetime import datetime
import sys
def done_message(ctx: Context):
    yield
    time = datetime.now().strftime('%H:%M:%S')
    sys.stdout.write('\033[A')
    print(f'\033[94m\033[4m{time}')