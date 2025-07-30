$data modify storage cable:data input set from storage cable:data registry[{id:$(id)}]
summon item ~ ~ ~ {Tags:['cable.item'],Item:{id:glow_item_frame}}
execute as @e[limit=1,type=item,distance=...1,tag=cable.item] run function ./give_2:
    tag @s remove cable.item
    data modify entity @s Item.components set from storage cable:data input.components
    data modify entity @s Item.components merge value {entity_data:{id: "glow_item_frame",Invulnerable: true,Invisible: true,Silent: true,Tags: ["cable.block"],Item:{id:'coal'}}}
    data modify entity @s Item.components."minecraft:entity_data".Item.components set from storage cable:data input.components
    data modify entity @s Item.components."minecraft:entity_data".Item.components."minecraft:item_model" set value 'air'
    data modify entity @s Item.components."minecraft:custom_data".cable set value 1b

function ./give/all:
    data modify storage cable:data temp set from storage cable:data registry
    execute run function ./give/all_loop:
        data modify storage cable:data input set from storage cable:data temp[0]
        summon item ~ ~ ~ {Tags:['cable.item'],Item:{id:glow_item_frame}}
        execute as @e[limit=1,type=item,distance=...1,tag=cable.item] run function ./give_2

        data remove storage cable:data temp[0]
        execute if data storage cable:data temp[0] run function ./give/all_loop