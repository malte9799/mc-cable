#> cable:v1.0.0/cable/place/update
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       components: {}

execute if score #new cable.network.low matches 1.. run function cable:v1.0.0/cable/network/regen
execute if score #new cable.network.low matches 0 run function cable:v1.0.0/cable/network/copy

execute positioned ^ ^ ^-1 summon item_display run function cable:v1.0.0/cable/place/cable
scoreboard players operation #predicate cable.direction *= #-1 cable.math
execute as @e[limit=1, dx=0, type=item_display, tag=cable.core, tag=!cable.cable, predicate=cable:same_type] facing ^ ^ ^-1 run return run function cable:v1.0.0/cable/place/cable
execute facing ^ ^ ^-1 summon item_display run function cable:v1.0.0/cable/place/cable