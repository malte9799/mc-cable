#! Core
function ./node/core/summon:
    # @context as @e[tag=cable.node]
    # @context rotated {...} summon item_display
    # @input? storage cable:data input - Cable registry entry
    execute at @s align xyz run tp @s ~.5 ~.5 ~.5 0 0
    execute as @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.type_id
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.core'],item_display:'fixed',item:{id:'coal'}}
    execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data".floats set value [0f]
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players set @s cable.direction 0

function ./node/core/destroy:
    # @context as @e[type=item_display,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    execute at @s as @e[distance=...1,type=item_display,tag=cable.collision.core,predicate=cable:same_type] run function cable:killme
    execute at @s as @e[distance=...1,type=interaction,tag=cable.interaction.core,predicate=cable:same_type] run function cable:killme
    kill @s

function ./node/core/add:
    data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]
    tag @s add cable.core

#! Wire
function ./node/wire/summon:
    # @context as @e[tag=cable.node]
    # @context rotated {...} summon item_display
    # @input? storage cable:data input - Cable registry entry
    execute positioned as @s align xyz run tp @s ~.5 ~.5 ~.5 ~ ~
    execute as @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.type_id
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.wire'],item_display:'fixed',item:{id:'coal'}}
    execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1f],flags:[true]}
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    function cable:impl/util/get_direction
    function cable:impl/util/set_direction
    execute at @s align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./node/core/add

function ./node/wire/destroy:
    # @context as @e[type=item_display,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction

    execute at @s positioned ^ ^ ^1 align xyz as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] at @s run function ./node/wire/destroy_2
    execute at @s run function ./node/wire/destroy_2:
        execute positioned ^ ^ ^.5 as @e[distance=...1,type=item_display,tag=cable.collision.wire,predicate=cable:same_type] run function cable:killme
        execute positioned ^ ^ ^.2 as @e[distance=...1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme
        execute positioned ^ ^ ^.4 as @e[distance=...1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme

        execute if entity @s[tag=!cable.core] run return run kill @s
        execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run return run function ./node/core/summon
        execute align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./node/core/add
        kill @s

#! IO
function ./node/io/summon:
    # @context as @e[tag=cable.node]
    # @context rotated {...} summon item_display
    # @input? storage cable:data input - Cable registry entry
    function ./node/wire/summon
    tag @s add cable.io
    tag @s add cable.io.extract
    function ./node/io/update_model
    execute positioned as @s align xyz positioned ~.5 ~.5 ~.5 positioned ^ ^ ^.499 unless entity @n[distance=...5,type=item_display,tag=cable.io.connector] summon item_display run function ./node/connector/summon

function ./node/io/destroy:
    # @conext as @e[tag=cable.io,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute at @s align xyz unless entity @e[dx=0,type=item_display,tag=cable.io,predicate=!cable:same_type,predicate=cable:same_direction] positioned ~.5 ~.5 ~.5 positioned ^ ^ ^.499 as @n[distance=...1,type=item_display,tag=cable] run function ./node/connector/destroy

function ./node/io/update_model:
    data modify entity @s[tag=!cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [2f]
    data modify entity @s[tag=!cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [3f]
    data modify entity @s[tag=cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [4f]
    data modify entity @s[tag=cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [5f]

#! Io Connector
function ./node/connector/summon:
    tp @s ~ ~ ~ ~ ~
    data merge entity @s {Tags:['cable','cable.node','cable.io.connector'],item_display:'fixed',item:{id:'coal',components:{custom_data:{},item_model:'cable:base/connector'}}}
    execute store result score #predicate cable.type run data get storage cable:data input.type_id
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    function cable:impl/util/get_direction
    function cable:impl/util/set_direction

function ./node/connector/destroy:
    # @comtext as @e[tag=cable.io.connector]
    kill @s[tag=cable.io.connector]

