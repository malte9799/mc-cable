schedule function cable:impl/tick 1t replace

execute as @e[type=item_display,tag=cable.core] run function ./tick_2: 
    execute store result entity @s data.net_low int 1 run scoreboard players get @s cable.network.low
    data modify entity @s CustomName set string entity @s data.net_low


execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=cable.core,distance=..5] run data modify entity @s CustomNameVisible set value 1b
execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=cable.core,distance=5..] run data modify entity @s CustomNameVisible set value 0b