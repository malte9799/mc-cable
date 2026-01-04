function ./connector/summon:
    # @context summon item_frame
    data merge entity @s {Tags:['cable','cable.connector'],Silent:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"coal",components:{item_model:"cable:base/connector",custom_model_data:{colors:[[1,0,0]]}}}}
    scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    execute if score #predicate cable.direction matches 1 run data modify entity @s Facing set value 4
    execute if score #predicate cable.direction matches -1 run data modify entity @s Facing set value 5
    execute if score #predicate cable.direction matches 2 run data modify entity @s Facing set value 0
    execute if score #predicate cable.direction matches -2 run data modify entity @s Facing set value 1
    execute if score #predicate cable.direction matches 3 run data modify entity @s Facing set value 2
    execute if score #predicate cable.direction matches -3 run data modify entity @s Facing set value 3
    tp @s ~ ~ ~

function ./connector/destroy:
    # @comtext as @e[tag=cable.connector]
    execute if entity @s[tag=cable.connector.selected] at @s run kill @e[distance=...4,type=chest_minecart,tag=cable.connector.gui]
    kill @s[tag=cable.connector]

function ./connector/tick:
    # @conext as root
    execute as @a if predicate cable:looking_at_connector run tag @s add cable.looking_at_connector
    execute as @a[tag=cable.looking_at_connector] run function ./connector/tick_2:
        tag @s remove cable.looking_at_connector
        function #bs.view:as_aimed_entity {run:"function cable:impl/cable/node/io/connector/looking", with:{entities:"cable.connector",ignored_entities:"chest_minecart"}}
    execute as @e[type=item_frame,tag=cable.connector,tag=cable.connector.selected,tag=!cable.connector.looked_at] run function ./connector/deselect
    tag @e[type=item_frame,tag=cable.connector,tag=cable.connector.looked_at] remove cable.connector.looked_at
    execute as @e[type=chest_minecart,tag=cable.connector.gui] at @s run function ./gui/tick

function ./connector/looking:
    # @context at <players whos looking> as <connector>
    tag @p add cable.looking_at_connector

    tag @s add cable.connector.looked_at
    execute unless entity @s[tag=cable.connector.selected] at @s positioned ~ ~-.3 ~ run function ./gui/summon
    tag @s add cable.connector.selected
    data modify entity @s Item.components.minecraft:custom_model_data.flags set value [1b]


function ./connector/deselect:
    tag @s remove cable.connector.selected
    data modify entity @s Item.components.minecraft:custom_model_data.flags set value [0b]

    execute at @s align xyz run kill @n[dx=0,type=chest_minecart,tag=cable.connector.gui]
    execute as @e[type=item] if items entity @s contents coal[custom_data~{cable:{gui:true}}] run kill @s
