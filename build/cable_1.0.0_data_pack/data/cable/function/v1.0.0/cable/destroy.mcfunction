#> cable:v1.0.0/cable/destroy
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       ?components: {}

execute store result score #predicate cable.type run data get storage cable:data input.index
tag @e[dx=0, type=item_display, tag=cable.network, predicate=cable:same_type] add cable.checked
execute as @e[dx=0, type=item_display, tag=cable.cable, predicate=cable:same_type] run function cable:v1.0.0/cable/destroy/network

data remove storage cable:data input
function cable:v1.0.0/cable/offset
tag @e[type=item_display, tag=cable.checked] remove cable.checked
kill @e[type=item_display, tag=cable, dx=0, predicate=cable:same_type]