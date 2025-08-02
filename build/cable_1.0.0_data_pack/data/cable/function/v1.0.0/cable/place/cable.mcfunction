#> cable:v1.0.0/cable/place/cable
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       components: {}

tp @s ~0.5 ~0.5 ~0.5 ~ ~
function cable:v1.0.0/cable/network/set
data merge entity @s {Tags: ["cable", "cable.init", "cable.network", "cable.cable"], item_display: "fixed", item: {id: "coal"}}
data modify entity @s item.components set from storage cable:data input.components
data modify entity @s item.components."minecraft:custom_model_data".floats set value [1.0f]
scoreboard players operation @s cable.type = #predicate cable.type
scoreboard players operation @s cable.direction = #predicate cable.direction
execute unless entity @e[limit=1, type=item_display, tag=cable.core, dx=0, predicate=cable:same_type] run tag @s add cable.core
data modify entity @s[tag=!cable.core] item.components."minecraft:custom_model_data".flags set value [1b]