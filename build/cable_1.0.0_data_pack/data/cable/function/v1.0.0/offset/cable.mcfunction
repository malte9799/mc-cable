#> cable:v1.0.0/offset/cable
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int

scoreboard players operation #predicate cable.direction = @s cable.direction
data modify storage cable:data temp set value [{i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}]
execute as @e[dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:same_direction] run function cable:v1.0.0/offset/enumerate with entity @s item.components."minecraft:custom_data"
data remove storage cable:data temp[{i: -1}]
execute store result score #count cable.type run data get storage cable:data temp

function cable:v1.0.0/offset/cable_2
scoreboard players operation #predicate cable.direction *= #-1 cable.math
execute positioned ^ ^ ^1 run function cable:v1.0.0/offset/cable_2

execute positioned ^ ^ ^1 facing ^ ^ ^-1 run function cable:v1.0.0/offset/core
