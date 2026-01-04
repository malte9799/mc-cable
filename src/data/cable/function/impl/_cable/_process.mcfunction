function ./process/tick:
    scoreboard players add #predicate cable.network.process_queue 1
    scoreboard players operation #predicate cable.network.process_queue %= #process_queue cable.math

    execute as @e[tag=cable.io.extract,predicate=cable:same_process_queue,type=item_display] at @s run function ./process/tick_2:

        scoreboard players operation #predicate cable.type = @s cable.type
        scoreboard players operation #predicate cable.network.low = @s cable.network.low
        scoreboard players operation #predicate cable.network.high = @s cable.network.high

        execute if entity @s[tag=!cable.io.round_robin] run function ./process/tick_3:
            execute if entity @s[tag=!cable.io.self_feed] 
                as @n[distance=.1..,tag=cable.io.insert,predicate=cable:same_type,predicate=cable:same_network,predicate=cable:same_process_queue,type=item_display]
                at @s run function ./process/tick_4:
                    scoreboard players operation #predicate cable.direction = @s cable.direction
                    execute align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^1 summon marker run function ./process/summon_marker:
                        data merge entity @s {Tags:["cable.io.transfer","itemio.transfer.destination"],data:{itemio:{input_side:"wireless",ioconfig:{}}}}
                        execute if score #predicate cable.direction matches 1 run data modify entity @s data.itemio.input_side set value "east"
                        execute if score #predicate cable.direction matches -1 run data modify entity @s data.itemio.input_side set value "west"
                        execute if score #predicate cable.direction matches 2 run data modify entity @s data.itemio.input_side set value "up"
                        execute if score #predicate cable.direction matches -2 run data modify entity @s data.itemio.input_side set value "down"
                        execute if score #predicate cable.direction matches 3 run data modify entity @s data.itemio.input_side set value "south"
                        execute if score #predicate cable.direction matches -3 run data modify entity @s data.itemio.input_side set value "north"

            execute if entity @s[tag=cable.io.self_feed] run say self feed
        
        execute if entity @s[tag=cable.io.round_robin] run say round robin


        scoreboard players operation #predicate cable.direction = @s cable.direction
        scoreboard players set #max_output_count itemio.io 32

        data remove storage itemio:io output
        data remove storage itemio:io input
        data merge storage itemio:io {output_side:"wireless"}
        execute if score #predicate cable.direction matches 1 run data modify storage itemio:io output_side set value "east"
        execute if score #predicate cable.direction matches -1 run data modify storage itemio:io output_side set value "west"
        execute if score #predicate cable.direction matches 2 run data modify storage itemio:io output_side set value "up"
        execute if score #predicate cable.direction matches -2 run data modify storage itemio:io output_side set value "down"
        execute if score #predicate cable.direction matches 3 run data modify storage itemio:io output_side set value "south"
        execute if score #predicate cable.direction matches -3 run data modify storage itemio:io output_side set value "north"

        execute positioned ^ ^ ^1 run function #itemio:calls/transfer

        kill @e[tag=cable.io.transfer,type=marker]
