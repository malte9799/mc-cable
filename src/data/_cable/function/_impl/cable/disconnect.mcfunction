


execute as @s[tag=!cable.cable] run return fail

scoreboard players operation #predicate cable.type = @s cable.type
tag @e[dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] add cable.checked
function ./destroy/network

execute run function ./disconnect2:
    execute if entity @s[tag=!cable.core] run return run kill @s
    execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.cable,tag=!cable.core,predicate=cable:same_type] run return run function ./place/core


function ./offset
tag @e[type=item_display,tag=cable.checked] remove cable.checked