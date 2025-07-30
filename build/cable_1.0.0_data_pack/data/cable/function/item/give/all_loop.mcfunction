#> cable:item/give/all_loop
#

data modify storage cable:data input set from storage cable:data temp[0]
summon item ~ ~ ~ {Tags: ["cable.item"], Item: {id: "glow_item_frame"}}
execute as @e[limit=1, type=item, distance=..0.1, tag=cable.item] run function cable:item/give/init2

data remove storage cable:data temp[0]
execute if data storage cable:data temp[0] run function cable:item/give/all_loop
