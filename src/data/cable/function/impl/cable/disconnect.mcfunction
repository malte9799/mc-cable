#> @context as @e[tag=cable.cable] at @s align xyz

execute as @s[tag=!cable.cable] run return fail

scoreboard players operation #predicate cable.type = @s cable.type
tag @s add cable.checked
tag @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] add cable.checked
function ./destroy/network

execute run function ./disconnect2:
    execute if entity @s[tag=!cable.core] run return run kill @s
    execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.cable,tag=!cable.core,predicate=cable:same_type] run return run function ./place/core
    execute as @e[limit=1,dx=0,type=item_display,tag=cable.cable,tag=!cable.core,predicate=cable:same_type] run function ./destroy/init_core
    kill @s

    
tag @e[type=item_display,tag=cable.checked] remove cable.checked
function ./offset