#> cable:v1.0.0/offset/core_2
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

execute as @e[dx=0, type=item_display, tag=cable.core, tag=!cable.cable] run function cable:v1.0.0/offset/tp
