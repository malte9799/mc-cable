#! Base
# function ./node/summon:
#     execute positioned as @s align xyz run tp @s ~.5 ~.5 ~.5 ~ ~
#     data merge entity @s {Tags:['cable','cable.node','cable.network'],item_display:'fixed',item:{id:'coal'}}
#     execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
#     execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
#     scoreboard players operation @s cable.direction = #predicate cable.direction
#     function cable:impl/util/get_direction
#     function cable:impl/util/set_direction


#! Core
# function ./node/core/summon:
#     # @context as @e[tag=cable.node]
#     # OR
#     # @context summon item_display
#     # @input storage cable:data input - Cable registry entry
#     scoreboard players set #predicate cable.direction 0
#     execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
#     function ./node/summon
#     tag @s add cable.core
#     data modify entity @s item.components."minecraft:custom_model_data" set value {flags:[0b]}
#     function ./offset

# function ./node/core/destroy:
#     scoreboard players operation #predicate cable.type = @s cable.type
#     execute at @s as @e[distance=...1,type=item_display,tag=cable.collision.core,predicate=cable:same_type] run function cable:killme
#     execute at @s as @e[distance=...1,type=interaction,tag=cable.interaction.core,predicate=cable:same_type] run function cable:killme
#     kill @s
#     function ./offset

# function ./node/core/add:
#     data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0b
#     tag @s add cable.core

#! Wire
# function ./node/wire/summon:
#     # @context as @e[tag=cable.node]
#     # OR
#     # @context rotated {...} summon item_display
#     # @input storage cable:data input - Cable registry entry
#     execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
#     function ./node/summon
#     tag @s add cable.wire
#     data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1f],flags:[1b]}
#     execute align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./node/core/add

# function ./node/wire/destroy:
#     # @context as @e[type=item_display,tag=cable.wire]
#     scoreboard players operation #predicate cable.type = @s cable.type
#     scoreboard players operation #predicate cable.direction = @s cable.direction

#     execute at @s positioned ^ ^ ^1 align xyz as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] at @s run function ./node/wire/destroy_2
#     execute at @s run function ./node/wire/destroy_2:
#         execute positioned ^ ^ ^.5 as @e[distance=...1,type=item_display,tag=cable.collision.wire,predicate=cable:same_type] run function cable:killme
#         execute positioned ^ ^ ^.2 as @e[distance=...1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme
#         execute positioned ^ ^ ^.4 as @e[distance=...1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme

#         execute if entity @s[tag=!cable.core] run return run kill @s
#         execute align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run return run function ./node/core/summon
#         execute align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./node/core/add
#         kill @s

#! IO
# function ./node/io/summon:
#     # @execute as @e[tag=cable.node] 
#     # OR
#     # @context rotated {...} summon item_display
#     # @input storage cable:data input - Cable registry entry
#     function ./node/wire/summon
#     tag @s add cable.io
#     tag @s add cable.io.extract
#     function ./node/io/update_model
#     execute 
#         positioned as @s 
#         align xyz 
#         unless entity @n[dx=0,type=item_frame,tag=cable.connector,predicate=cable:same_direction] 
#         positioned ~.5 ~.5 ~.5
#         summon item_frame 
#         run function ./node/connector/summon

# function ./node/io/destroy:
#     # @conext as @e[tag=cable.io,tag=cable.wire]
#     scoreboard players operation #predicate cable.type = @s cable.type
#     scoreboard players operation #predicate cable.direction = @s cable.direction
#     execute 
#         at @s align xyz 
#         unless entity @e[dx=0,type=item_display,tag=cable.io,predicate=!cable:same_type,predicate=cable:same_direction] 
#         as @n[dx=0,type=item_frame,tag=cable.connector,predicate=cable:same_direction] 
#         run function ./node/connector/destroy

# function ./node/io/update_model:
#     data modify entity @s[tag=!cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [2f]
#     data modify entity @s[tag=!cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [3f]
#     data modify entity @s[tag=cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [4f]
#     data modify entity @s[tag=cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [5f]

#! IO Connector
# function ./node/connector/summon:
#     # @context summon item_frame
#     data merge entity @s {Tags:['cable','cable.connector'],Silent:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"coal",components:{item_model:"cable:base/connector"}}}
#     scoreboard players operation @s cable.type = #predicate cable.type
#     scoreboard players operation @s cable.direction = #predicate cable.direction
#     execute if score #predicate cable.direction matches 1 run data modify entity @s Facing set value 4
#     execute if score #predicate cable.direction matches -1 run data modify entity @s Facing set value 5
#     execute if score #predicate cable.direction matches 2 run data modify entity @s Facing set value 0
#     execute if score #predicate cable.direction matches -2 run data modify entity @s Facing set value 1
#     execute if score #predicate cable.direction matches 3 run data modify entity @s Facing set value 2
#     execute if score #predicate cable.direction matches -3 run data modify entity @s Facing set value 3
#     tp @s ~ ~ ~
        # function ./util/get_direction
    # function ./util/set_direction

# function ./node/connector/destroy:
#     # @comtext as @e[tag=cable.connector]
#     kill @s[tag=cable.connector]

# function ./node/connector/tick:
#     # @conext as root
#     execute as @a if predicate cable:looking_at_connector run tag @s add cable.looking_at_connector
#     execute as @a[tag=cable.looking_at_connector] run function ./node/connector/tick_2:
#         tag @s remove cable.looking_at_connector
#         function #bs.view:as_aimed_entity {run:"function cable:impl/cable/node/connector/looking", with:{entities:"cable.connector",ignored_entities:"chest_minecart"}}
#     execute as @e[type=item_frame,tag=cable.connector,tag=cable.connector.selected,tag=!cable.connector.looked_at] run function ./node/connector/gui/destory
#     tag @e[type=item_frame,tag=cable.connector,tag=cable.connector.looked_at] remove cable.connector.looked_at
#     execute as @e[type=chest_minecart,tag=cable.connector.gui] run rotate @s 24 24

# function ./node/connector/looking:
#     # @context at <players whos looking> as <connector>
#     tag @p add cable.looking_at_connector

#     tag @s add cable.connector.looked_at
#     execute unless entity @s[tag=cable.connector.selected] at @s positioned ~ ~-.3 ~ run function ./node/connector/gui/summon
#     tag @s add cable.connector.selected


# function ./node/connector/gui/summon:
#     summon chest_minecart ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,Rotation:[24F,24F],Tags:["cable","cable.connector.gui"],CustomName:["",{"color":"#7B7B00","font":"cable:icons","translate":"block.cable.redstone.gui"},{"translate":"space.-4096"}],DisplayState:{Name:"minecraft:barrier"}}
#     team join cable.no_collision @n[type=chest_minecart,tag=cable.connector.gui]

# function ./node/connector/gui/destory:
#     tag @s remove cable.connector.selected
#     execute at @s align xyz run kill @n[dx=0,type=chest_minecart,tag=cable.connector.gui]


# function ./node/tick:
    # function ./node/connector/tick