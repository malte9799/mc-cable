execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{cable:{id:"wrench"}}] run return run function ./switch/mainhand
execute if items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{cable:{id:"wrench"}}] run return run function ./switch/offhand
advancement revoke @s only cable:switched_wrench

function ./switch/update:
    execute store result score #count cable.math run data get storage cable:data registry
    scoreboard players set #index cable.math -1
    execute if data storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id store result score #index cable.math run data get storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id
    scoreboard players add #index cable.math 1
    execute if score #index cable.math >= #count cable.math run scoreboard players set #index cable.math -1
    execute store result storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id int 1 run scoreboard players get #index cable.math


    execute if score #index cable.math matches 0.. run function ./switch/update_2 with storage cable:data temp.Item.components."minecraft:custom_data".cable:
        $data modify storage cable:data temp.cable set from storage cable:data registry[{id:$(type_id)}]
        execute run function ./switch/update_3 with storage cable:data temp.cable:
            $data modify storage cable:data temp.Item.components."minecraft:item_name" set value ["Wrench ", {atlas:"minecraft:blocks",sprite:"cable:block/$(type)_core"}]
    execute if score #index cable.math matches -1 run function ./switch/update_4:
        data modify storage cable:data temp.Item.components."minecraft:item_name" set value "Wrench"



function ./switch/mainhand:
    data remove storage cable:data temp
    data modify storage cable:data temp.Item set from entity @s SelectedItem
    function ./switch/update
    tag @s add cable.switched_wrench
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    execute summon item_display run function ./switch/mainhand_2:
        data modify entity @s item set from storage cable:data temp.Item
        item replace entity @a[limit=1,tag=cable.switched_wrench] weapon.offhand from entity @s contents
        kill @s
    tag @s remove cable.switched_wrench

function ./switch/offhand:
    data remove storage cable:data temp
    data modify storage cable:data temp.Item set from entity @s equipment.offhand
    function ./switch/update
    tag @s add cable.switched_wrench
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
    execute summon item_display run function ./switch/offhand_2:
        data modify entity @s item set from storage cable:data temp.Item
        item replace entity @a[limit=1,tag=cable.switched_wrench] weapon.mainhand from entity @s contents
        kill @s
    tag @s remove cable.switched_wrench


    # summon item_display ~ ~ ~ {UUID:[I;30705461,-249804267,-1632044234,-253171369]}
    # item replace entity 01d48735-f11c-4a15-9eb8-fb36f0e8e957 contents from entity @s weapon.offhand
    # function ./switch/update
    # item replace entity @s weapon.offhand from entity @s weapon.mainhand
    # item replace entity @s weapon.mainhand from entity 01d48735-f11c-4a15-9eb8-fb36f0e8e957 contents
    # kill 01d48735-f11c-4a15-9eb8-fb36f0e8e957
    # advancement revoke @s only cable:switched_wrench

