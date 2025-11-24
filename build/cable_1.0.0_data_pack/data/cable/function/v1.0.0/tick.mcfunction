#> cable:v1.0.0/tick
#
schedule function cable:v1.0.0/tick 1 replace

execute as @e[type=item_display, tag=cable.core] run function cable:v1.0.0/tick_2

execute as @a at @s as @e[type=item_display, tag=cable.core, distance=..5] run data modify entity @s CustomNameVisible set value 1b
execute as @a at @s as @e[type=item_display, tag=cable.core, distance=5..] run data modify entity @s CustomNameVisible set value 0b