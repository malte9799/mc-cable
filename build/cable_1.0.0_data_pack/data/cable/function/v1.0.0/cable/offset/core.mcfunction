#> cable:v1.0.0/cable/offset/core
#
# @context align xyz

data modify storage cable:data temp.sort set value [{i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}]
execute as @e[type=item_display, dx=0, tag=cable.core, tag=!cable.checked] run function cable:v1.0.0/cable/offset/enumerate
data remove storage cable:data temp.sort[{i: -1}]
execute store result score #count cable.type run data get storage cable:data temp.sort
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, predicate=cable:direction_ew] rotated 90 0 run return run function cable:v1.0.0/cable/offset/core_2
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, predicate=cable:direction_sn] rotated 0 0 run return run function cable:v1.0.0/cable/offset/core_2
execute if entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, predicate=cable:direction_ud] rotated 0 90 run return run function cable:v1.0.0/cable/offset/core_2
execute rotated 0 0 run function cable:v1.0.0/cable/offset/core_2