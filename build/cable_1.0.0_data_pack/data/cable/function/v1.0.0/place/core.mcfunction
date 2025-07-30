#> cable:v1.0.0/place/core
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       components: {}

tp @s ~0.5 ~0.5 ~0.5 ~ ~
execute unless score @s cable.network.low matches 1.. run function cable:v1.0.0/network/new_id
data merge entity @s {Tags: ["cable", "cable.network", "cable.core"], item_display: "fixed", item: {id: "coal"}}
data modify entity @s item.components set from storage cable:data input.components
execute store result score @s cable.type run data get storage cable:data input.index
scoreboard players set @s cable.direction 0
