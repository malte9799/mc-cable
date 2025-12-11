# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       type_id: int
#       ?components: {}

execute store result score #predicate cable.type run data get storage cable:data input.type_id
tag @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] add cable.checked
execute as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] run function ./destroy/network:
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute rotated as @s positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.io,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/network_2:
        execute if entity @s[tag=!cable.checked] run function ./network/new_id
        execute if entity @s[tag=!cable.checked] as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./destroy/network_3:
            tag @s add cable.checked
            scoreboard players operation @s cable.network.low = #global_network cable.network.low
            scoreboard players operation @s cable.network.high = #global_network cable.network.high
            execute if entity @s[tag=cable.io] run function ./network/process_queue
            execute at @s[tag=cable.wire] positioned ^ ^ ^1 align xyz as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./destroy/network_3

        execute if entity @s[tag=!cable.core] run return run kill @s
        execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] rotated 0 0 run return run function ./render/core/init
        execute as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./render/core/add
        kill @s

data remove storage cable:data input
function ./offset
tag @e[type=item_display,tag=cable.checked] remove cable.checked
kill @e[type=item_display,tag=cable,dx=0,predicate=cable:same_type]
playsound block.stone.break block @a ~ ~ ~
execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable] if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air