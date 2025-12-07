$data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
summon item ~ ~ ~ {Tags:['cable.item'],Item:{id:glow_item_frame,components:{entity_data:{id:"glow_item_frame",Invulnerable:true,Invisible:true,Silent:true,Tags:["cable.block"],Item:{id:'coal'}}}}}
execute as @e[limit=1,type=item,distance=...1,tag=cable.item] run function ./give/init:
    tag @s remove cable.item
    data modify entity @s Item.components merge from storage cable:data input.components
    data modify entity @s Item.components."minecraft:entity_data".Item.components set from storage cable:data input.components
    data modify entity @s Item.components."minecraft:custom_data".cable.id set value 'cable'
    data modify entity @s Item.components."minecraft:custom_data".cable.type set from storage cable:data input.type

function ./give/all:
    data modify storage cable:data temp.registry set from storage cable:data registry
    execute run function ./give/all_loop:
        data modify storage cable:data input set from storage cable:data temp.registry[0]
        summon item ~ ~ ~ {Tags:['cable.item'],Item:{id:glow_item_frame,components:{entity_data:{id:"glow_item_frame",Invulnerable:true,Invisible:true,Silent:true,Tags:["cable.block"],Item:{id:'coal'}}}}}
        execute as @e[limit=1,type=item,distance=...1,tag=cable.item] run function ./give/init

        data remove storage cable:data temp.registry[0]
        execute if data storage cable:data temp.registry[0] run function ./give/all_loop
