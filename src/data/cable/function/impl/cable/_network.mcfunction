function ./network/new_id:
    scoreboard players add #global_network cable.network.low 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players add #global_network cable.network.high 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players set #global_network cable.network.low 1
    scoreboard players operation #new cable.network.low = #global_network cable.network.low
    scoreboard players operation #new cable.network.high = #global_network cable.network.high
    return 1

function ./network/set_new_all:
    scoreboard players operation #predicate cable.network.low = @s cable.network.low
    scoreboard players operation #predicate cable.network.high = @s cable.network.high
    execute as @e[type=item_display,tag=cable.network,predicate=cable:same_network] run function ./network/set_new

function ./network/copy_new:
    scoreboard players operation #new cable.network.low = @s cable.network.low
    scoreboard players operation #new cable.network.high = @s cable.network.high

function ./network/set_new:
    scoreboard players operation @s cable.network.low = #new cable.network.low
    scoreboard players operation @s cable.network.high = #new cable.network.high
    execute if score @s cable.network.process_queue matches 0.. run function ./network/process_queue

function ./network/set_new_walk:
    tag @s add cable.checked
    function ./network/set_new
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute at @s[tag=cable.wire] positioned ^ ^ ^1 align xyz if entity @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_type,predicate=cable:opposite_direction] as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./network/set_new_walk

function ./network/process_queue:
    scoreboard players operation @s cable.network.process_queue = @s cable.network.low
    scoreboard players operation @s cable.network.process_queue %= #process_queue cable.math
