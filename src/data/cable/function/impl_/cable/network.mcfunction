function ./network/new_id:
    scoreboard players add #global_network cable.network.low 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players add #global_network cable.network.high 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players set #global_network cable.network.low 1
    scoreboard players operation @s cable.network.low = #global_network cable.network.low
    scoreboard players operation @s cable.network.high = #global_network cable.network.high
    execute if score @s cable.netowrk.process_queue matches 0.. run function ./network/process_queue
    return 1
    
function ./network/gen_new:
    scoreboard players add #global_network cable.network.low 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players add #global_network cable.network.high 1
    execute if score #global_network cable.network.low matches 2147483647 run scoreboard players set #global_network cable.network.low 1
    scoreboard players operation #new cable.network.low = #global_network cable.network.low
    scoreboard players operation #new cable.network.high = #global_network cable.network.high
    execute if score @s cable.netowrk.process_queue matches 0.. run function ./network/process_queue
    return 1
function ./network/regen:
    scoreboard players operation #predicate cable.network.low = @s cable.network.low
    scoreboard players operation #predicate cable.network.high = @s cable.network.high
    execute as @e[type=item_display,tag=cable.network,predicate=cable:same_network] run function ./network/set
    
function ./network/copy:
    scoreboard players operation #new cable.network.low = @s cable.network.low
    scoreboard players operation #new cable.network.high = @s cable.network.high

function ./network/set:
    scoreboard players operation @s cable.network.low = #new cable.network.low
    scoreboard players operation @s cable.network.high = #new cable.network.high
    execute if score @s cable.netowrk.process_queue matches 0.. run function ./network/process_queue

function ./network/process_queue:
    scoreboard players operation @s cable.network.process_queue = @s cable.network.low
    scoreboard players operation @s cable.network.process_queue %= #process_queue cable.math
