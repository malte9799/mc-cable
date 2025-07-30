#> cable:item/give/init
#

tag @s remove cable.item
data modify entity @s Item.components set from storage cable:data input.components
data modify entity @s Item.components."minecraft:custom_data".cable set value 1b
