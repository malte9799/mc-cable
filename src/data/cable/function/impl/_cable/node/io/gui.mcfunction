function ./gui/summon:
    summon chest_minecart ~ ~ ~ {
        Tags:["cable","cable.connector.gui"],
        Rotation:[24F,24F],
        NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,
        CustomName:[{"text":""},{"color":"#7B7B00","font":"cable:icons","translate":"block.cable.redstone.gui"},{"translate":"space.-4096"}],
        DisplayState:{Name:"minecraft:barrier"},
        Items:[{
            Slot: 0b,
            id: "minecraft:coal",
            components: {
                custom_data: {
                    cable: {
                        gui: true
                    }
                }
            }
        },{
            Slot: 4b,
            id: "minecraft:coal",
            components: {
                custom_data: {
                    cable: {
                        gui: true
                    }
                }
            }
        }]
    }
    team join cable.no_collision @n[type=chest_minecart,tag=cable.connector.gui]

function ./gui/tick:
    rotate @s 24 24
    execute unless items entity @s container.0 coal[custom_data~{cable:{gui:true}}] run function ./gui/insert/click
    item replace entity @s container.0 with coal[item_model=air,custom_data={cable:{gui:true}}]

    execute unless items entity @s container.4 coal[custom_data~{cable:{gui:true}}] run function ./gui/extract/click
    item replace entity @s container.4 with coal[item_model=air,custom_data={cable:{gui:true}}]

    # execute if predicate cable:invalid_items run function ./gui/invalid_items:
    #     data modify storage cable:data temp.Items set from entity @s Items

function ./gui/insert/click:
    data remove storage cable:data temp.Item
    data modify storage cable:data temp.Item set from entity @s Items[0]
    function ./gui/return_item

    execute as @n[type=item_display,tag=cable.io,tag=cable.io.insert] run return run function ./gui/insert/disable:
        tag @s remove cable.io.insert
        data modify entity @s[tag=cable.io.extract] item.components.minecraft:custom_model_data.floats[0] set value 3f
        data modify entity @s[tag=!cable.io.extract] item.components.minecraft:custom_model_data.floats[0] set value 2f
    execute as @n[type=item_display,tag=cable.io] run function ./gui/insert/enable:
        tag @s add cable.io.insert
        data modify entity @s[tag=cable.io.extract] item.components.minecraft:custom_model_data.floats[0] set value 5f
        data modify entity @s[tag=!cable.io.extract] item.components.minecraft:custom_model_data.floats[0] set value 4f

function ./gui/extract/click:
    data remove storage cable:data temp.Item
    data modify storage cable:data temp.Item set from entity @s Items[4]
    function ./gui/return_item

    execute as @n[type=item_display,tag=cable.io,tag=cable.io.extract] run return run function ./gui/extract/disable:
        tag @s remove cable.io.extract
        data modify entity @s[tag=cable.io.insert] item.components.minecraft:custom_model_data.floats[0] set value 4f
        data modify entity @s[tag=!cable.io.insert] item.components.minecraft:custom_model_data.floats[0] set value 2f
    execute as @n[type=item_display,tag=cable.io] run function ./gui/extract/enable:
        tag @s add cable.io.extract
        data modify entity @s[tag=cable.io.insert] item.components.minecraft:custom_model_data.floats[0] set value 5f
        data modify entity @s[tag=!cable.io.insert] item.components.minecraft:custom_model_data.floats[0] set value 3f

function ./gui/return_item:
    execute if data storage cable:data temp.Item.Slot as @p[gamemode=!spectator] at @s run summon item ~ ~ ~ {Item: {id: "stone", count: 1}, Tags: ["cable.replace_item", "global.ignore"]}
    data modify entity @e[type=item,tag=cable.replace_item,limit=1] Item set from storage cable:data temp.Item
    data remove storage cable:data temp.Item
    tag @e[type=item, limit=1, tag=cable.replace_item] remove cable.replace_item
    
