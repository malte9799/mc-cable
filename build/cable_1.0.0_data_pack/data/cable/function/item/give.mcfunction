#> cable:item/give
#
$data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
summon item ~ ~ ~ {Tags: ["cable.item"], Item: {id: "glow_item_frame", components: {entity_data: {id: "glow_item_frame", Invulnerable: 1b, Invisible: 1b, Silent: 1b, Tags: ["cable.block"], Item: {id: "coal"}}}}}
execute as @e[limit=1, type=item, distance=..0.1, tag=cable.item] run function cable:item/give_2
