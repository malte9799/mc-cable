## @context align xyz as @e[tag=cable.node]

scoreboard players operation #predicate cable.type = @s cable.type

execute as @s[tag=cable.core] as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] at @s run function ./destroy_2:
    scoreboard players operation #predicate cable.direction = @s cable.direction
    # execute rotated as @s positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.io,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/network_2:
    #     execute if entity @s[tag=!cable.checked] run function ./network/new_id
    #     execute if entity @s[tag=!cable.checked] as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./destroy/network_3:
    #         tag @s add cable.checked
    #         scoreboard players operation @s cable.network.low = #global_network cable.network.low
    #         scoreboard players operation @s cable.network.high = #global_network cable.network.high
    #         execute if entity @s[tag=cable.io] run function ./network/process_queue
    #         execute at @s[tag=cable.wire] positioned ^ ^ ^1 align xyz as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./destroy/network_3

    #     execute if entity @s[tag=!cable.core] run return run kill @s
    #     execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] rotated 0 0 run return run function ./render/core/init
    #     execute as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./render/core/add
    #     kill @s

