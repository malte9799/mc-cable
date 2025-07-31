#> cable:item/give_2
#

tag @s remove cable.item
data modify entity @s Item.components merge from storage cable:data input.components
data modify entity @s Item.components."minecraft:entity_data".Item.components set from storage cable:data input.components
data modify entity @s Item.components."minecraft:entity_data".Item.components.item_model set value "air"
data modify entity @s Item.components."minecraft:entity_data".Item.components.custom_data.cable.id set value "cable"
data modify entity @s Item.components."minecraft:custom_data".cable.id set value "cable"
