#> cable:v1.0.0/event/placed_rocket
#
advancement revoke @s only cable:placed_rocket

tag @s add cable.placer

execute as @n[type=firework_rocket, predicate=cable:is_cable_block] at @s align xyz run function cable:v1.0.0/event/placed_rocket_2 with entity @s FireworksItem.components."minecraft:custom_data"

tag @s remove cable.placer

execute if entity @e[limit=1, type=firework_rocket, predicate=cable:is_cable_block] run function cable:v1.0.0/event/placed_rocket
