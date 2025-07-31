#> cable:v1.0.0/cable/destroy/network
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       ?components: {}

scoreboard players operation #predicate cable.direction = @s cable.direction
execute rotated as @s positioned ^ ^ ^1 as @e[limit=1, dx=0, type=item_display, tag=cable.network, predicate=cable:same_type, predicate=cable:opposite_direction] run function cable:v1.0.0/cable/destroy/network_2
