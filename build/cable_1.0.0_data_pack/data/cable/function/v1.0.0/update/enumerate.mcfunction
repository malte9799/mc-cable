#> cable:v1.0.0/update/enumerate
#
#> cable:v1.0.0/update
#
# @context align xyz

execute unless data storage cable:data temp[8] run data modify storage cable:data temp set value [{i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}, {i: -1}]
function cable:v1.0.0/update/enumerate_2 with entity @s item.components."minecraft:custom_data"
