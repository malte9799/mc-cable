#> cable:v1.0.0/cable/offset/cable_2
#
# @context align xyz

execute if predicate cable:direction_ew rotated 90 0 as @e[dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:same_direction] run function cable:v1.0.0/cable/offset/tp
execute if predicate cable:direction_ud rotated 0 90 as @e[dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:same_direction] run function cable:v1.0.0/cable/offset/tp
execute if predicate cable:direction_sn rotated 0 0 as @e[dx=0, type=item_display, tag=cable.cable, tag=!cable.checked, predicate=cable:same_direction] run function cable:v1.0.0/cable/offset/tp
