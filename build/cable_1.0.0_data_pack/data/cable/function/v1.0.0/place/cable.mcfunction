#> cable:v1.0.0/place/cable
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int
#	   components: {}

tp @s ~ ~ ~ ~ ~
function cable:v1.0.0/network/set
data merge entity @s {Tags: ["cable", "cable.network", "cable.cable"], item_display: "fixed", item: {id: "coal"}}
data modify entity @s item.components set from storage cable:data input.components
data modify entity @s item.components."minecraft:custom_model_data".floats set value [1.0f]
execute store result score @s cable.type run data get storage cable:data input.index
scoreboard players operation @s cable.direction = #predicate cable.direction

execute align xyz unless entity @e[limit=1, type=item_display, tag=cable.core, dx=0, predicate=cable:same_type] run tag @s add cable.core
data modify entity @s[tag=!cable.core] item.components."minecraft:custom_model_data".flags set value [1b]

execute align xyz as @e[type=item_display, dx=0, tag=cable.cable, predicate=cable:same_direction] run function cable:v1.0.0/update/enumerate
execute if score #predicate cable.direction matches 1.. align xyz facing ^ ^ ^-1 as @e[type=item_display, dx=0, tag=cable.cable, predicate=cable:same_direction] run function cable:v1.0.0/update/offset
execute if score #predicate cable.direction matches ..-1 align xyz as @e[type=item_display, dx=0, tag=cable.cable, predicate=cable:same_direction] run function cable:v1.0.0/update/offset
