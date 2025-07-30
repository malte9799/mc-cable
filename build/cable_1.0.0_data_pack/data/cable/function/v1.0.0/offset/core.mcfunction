#> cable:v1.0.0/offset/core
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

data modify storage cable:data temp set value [{i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}]
execute as @e[type=item_display, dx=0, tag=cable.core, tag=!cable.checked] run function cable:v1.0.0/offset/enumerate with entity @s item.components."minecraft:custom_data"
data remove storage cable:data temp[{i: -1}]
execute store result score #count cable.type run data get storage cable:data temp
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:direction_ew] rotated 90 0 run return run function cable:v1.0.0/offset/core_2
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:direction_sn] rotated 0 0 run return run function cable:v1.0.0/offset/core_2
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:direction_ud] rotated 0 90 run return run function cable:v1.0.0/offset/core_2
execute rotated 0 0 run function cable:v1.0.0/offset/core_2
