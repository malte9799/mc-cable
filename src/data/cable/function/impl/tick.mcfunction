schedule function cable:impl/tick 1t replace

# function ./cable/node/tick
# function ./cable/process/tick

# function ./cable/collision/tick
# function ./cable/interaction/tick


# execute as @a at @s run function ./cable/collision/tick
# execute as @a at @s anchored eyes positioned ^ ^ ^ positioned ~ ~.2 ~ run function ./cable/collision/tick

#> @debug
execute as @a at @s run kill @e[type=text_display,tag=debug,distance=5..]
tag @e[type=text_display,tag=debug,tag=killme] add killme2
tag @e[type=text_display,tag=debug] add killme
execute as @a if items entity @s armor.head leather_helmet[minecraft:custom_data~{id:"debug:network_id"}] at @s as @e[type=item_display,tag=cable.core,distance=..5] at @s run function ./tick2:
    execute if score @s itemio.network_id.low matches 1.. store result entity @s data.debug int 1 run scoreboard players get @s itemio.network_id.low
    execute if score @s cable.network.low matches 1.. store result entity @s data.debug int 1 run scoreboard players get @s cable.network.low
    execute run function ./tick3 with entity @s data:
        $summon text_display ~ ~.1 ~ {billboard:"center",Tags:["debug"],text:"$(debug)",background:-16777216,see_through:false}
kill @e[type=text_display,tag=debug,tag=killme2]
#! @debug end

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
