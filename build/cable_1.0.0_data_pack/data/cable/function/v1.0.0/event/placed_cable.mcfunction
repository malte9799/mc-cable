#> cable:v1.0.0/event/placed_cable
#
advancement revoke @s only cable:placed_cable

tag @s add cable.placer

execute as @n[type=glow_item_frame, tag=cable.block, distance=..10] at @s align xyz run function cable:v1.0.0/event/placed_cable_2 with entity @s Item.components."minecraft:custom_data"

tag @s remove cable.placer

execute if entity @e[limit=1, type=glow_item_frame, distance=..10, tag=cable.block] run function cable:v1.0.0/event/placed_cable
