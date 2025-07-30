#> cable:v1.0.0/offset
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

execute store result score @s cable.type run data get storage cable:data input.index
scoreboard players set #dir cable.direction 0

execute as @e[dx=0, type=item_display, tag=cable.cable, predicate=cable:same_type] rotated as @s run function cable:v1.0.0/offset/cable

function cable:v1.0.0/offset/core
