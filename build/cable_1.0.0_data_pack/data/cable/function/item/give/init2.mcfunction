#> cable:item/give/init2
#

tag @s remove cable.item
data modify entity @s Item.components set from storage cable:data input.components
data modify entity @s Item.components merge value {entity_data: {id: "glow_item_frame", Invulnerable: 1b, Invisible: 1b, Silent: 1b, Tags: ["cable.block"], Item: {id: "coal"}}}
data modify entity @s Item.components."minecraft:entity_data".Item.components set from storage cable:data input.components
data modify entity @s Item.components."minecraft:entity_data".Item.components."minecraft:item_model" set value "air"
data modify entity @s Item.components."minecraft:custom_data".cable set value 1b
