#> cable:v1.0.0/cable/offset/cable
#
# @context align xyz

scoreboard players operation #predicate cable.direction = @s cable.direction
data modify storage cable:data temp.sort set value [{i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}]
execute as @e[dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:same_direction] run function cable:v1.0.0/cable/offset/enumerate
data remove storage cable:data temp.sort[{i: -1}]
execute store result score #count cable.type run data get storage cable:data temp.sort

function cable:v1.0.0/cable/offset/cable_2
scoreboard players operation #predicate cable.direction *= #-1 cable.math
execute positioned ^ ^ ^1 run function cable:v1.0.0/cable/offset/cable_2

execute positioned ^ ^ ^1 run function cable:v1.0.0/cable/offset/core
