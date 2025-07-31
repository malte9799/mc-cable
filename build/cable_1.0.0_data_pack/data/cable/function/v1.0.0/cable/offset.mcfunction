#> cable:v1.0.0/cable/offset
#
# @context align xyz

execute as @e[dx=0, type=item_display, tag=cable.cable, predicate=cable:same_type] rotated as @s run function cable:v1.0.0/cable/offset/cable

function cable:v1.0.0/cable/offset/core
