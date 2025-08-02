#> cable:v1.0.0/item/give/all_loop
#

data modify storage cable:data input set from storage cable:data temp.registry[0]
summon item ~ ~ ~ {Tags: ["cable.item"], Item: {id: "glow_item_frame", components: {entity_data: {id: "glow_item_frame", Invulnerable: 1b, Invisible: 1b, Silent: 1b, Tags: ["cable.block"], Item: {id: "coal"}}}}}
execute as @e[limit=1, type=item, distance=..0.1, tag=cable.item] run function cable:v1.0.0/item/give/init

data remove storage cable:data temp.registry[0]
execute if data storage cable:data temp.registry[0] run function cable:v1.0.0/item/give/all_loop