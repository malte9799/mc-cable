#> cable:v1.0.0/cable/destroy/network_3
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       ?components: {}

tag @s add cable.checked
scoreboard players operation @s cable.network.low = #global_network cable.network.low
scoreboard players operation @s cable.network.high = #global_network cable.network.high
execute at @s[tag=cable.cable] positioned ^ ^ ^1 align xyz as @e[dx=0, type=item_display, tag=cable.network, tag=!cable.checked, predicate=cable:same_type] run function cable:v1.0.0/cable/destroy/network_3