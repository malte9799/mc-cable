schedule function cable:impl/tick 1t replace

function ./cable/node/tick
function ./cable/process/tick

# function ./cable/collision/tick
# function ./cable/interaction/tick


execute as @a[predicate=cable:debug_goggles] at @s run function ./tick/debug:
    execute as @e[distance=..5,tag=energy.cable,type=item_display] run data modify entity @s CustomNameVisible set value 1b
    execute as @e[distance=5..,tag=energy.cable,type=item_display] run data modify entity @s CustomNameVisible set value 0b


execute as @a if score @s cable.wrench matches 1.. run function cable:impl/event/clicked_wrench

# scoreboard players add #predicate cable.network.process_queue 1
# scoreboard players operation #predicate cable.network.process_queue %= #process_queue cable.math

# execute as @e[type=item_display,tag=cable.io.insert,predicate=cable:same_process_queue] at @s run function ./tick_2:
#     scoreboard players operation #predicate cable.direction = @s cable.direction
#     execute as @s[tag=cable.io.insert] at @s align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^1 summon marker run function ./sommn_transfer_marker:
#         data merge entity @s {Tags:["cable.io.transfer","itemio.transfer.destination"],data:{itemio:{input_side:"wireless",ioconfig:{}}}}
#         execute if score #predicate cable.direction matches 1 run data modify entity @s data.itemio.input_side set value "east"
#         execute if score #predicate cable.direction matches -1 run data modify entity @s data.itemio.input_side set value "west"
#         execute if score #predicate cable.direction matches 2 run data modify entity @s data.itemio.input_side set value "up"
#         execute if score #predicate cable.direction matches -2 run data modify entity @s data.itemio.input_side set value "down"
#         execute if score #predicate cable.direction matches 3 run data modify entity @s data.itemio.input_side set value "south"
#         execute if score #predicate cable.direction matches -3 run data modify entity @s data.itemio.input_side set value "north"

# execute as @e[type=item_display,tag=cable.io.extract,predicate=cable:same_process_queue] at @s run function ./tick_3:
#     scoreboard players set #max_output_count itemio.io 1
#     data remove storage itemio:io output
#     data remove storage itemio:io input
#     data merge storage itemio:io {output_side:"wireless"}
#     execute positioned ^ ^ ^1 run function #itemio:calls/transfer

#     kill @e[type=marker,tag=cable.io.transfer]
