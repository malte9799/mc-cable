#> cable:v1.0.0/place/update
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int
#	   components: {}

execute if score #new cable.network.low matches 1.. run function cable:v1.0.0/network/regen
execute if score #new cable.network.low matches 0 run function cable:v1.0.0/network/copy

execute positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^-1 summon item_display run function cable:v1.0.0/place/cable
scoreboard players operation #predicate cable.direction *= #-1 cable.math
execute as @e[limit=1, type=item_display, dx=0, tag=cable.core, tag=!cable.cable, predicate=cable:same_type] facing ^ ^ ^-1 positioned ~0.5 ~0.5 ~0.5 run return run function cable:v1.0.0/place/cable
execute facing ^ ^ ^-1 positioned ~0.5 ~0.5 ~0.5 summon item_display run function cable:v1.0.0/place/cable
