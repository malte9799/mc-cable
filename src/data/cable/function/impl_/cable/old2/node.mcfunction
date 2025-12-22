function ./node/core/summon:
    # @context as @e[tag=cable.node]
    # @context rotated {...} summon item_display
    # @input? storage cable:data input - Cable registry entry
    execute at @s align xyz run tp @s ~.5 ~.5 ~.5 0 0
    execute unless score @s cable.network.low matches 1.. run function ./network/new_id
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.core'],item_display:'fixed',item:{id:'coal'}}
    execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data".floats set value [0f]
    execute store result score #predicate cable.type run data get storage cable:data input.id
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players set @s cable.direction 0

function ./node/core/add:
    data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]
    tag @s add cable.core

function ./node/wire/summon:
    # @context as @e[tag=cable.node]
    # @context rotated {...} summon item_display
    # @input? storage cable:data input - Cable registry entry
    execute at @s align xyz run tp @s ~.5 ~.5 ~.5 ~ ~
    execute unless score @s cable.network.low matches 1.. run function ./network/set_from_new
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.wire'],item_display:'fixed',item:{id:'coal'}}
    execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1f],flags:[true]}
    execute store result score #predicate cable.type run data get storage cable:data input.id
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    function ./util/get_direction
    function ./util/set_direction
    execute at @s align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./node/core/add
    
function ./node/wire/to_core:
    # @context as @e[type=item_display,tag=cable.wire]
    execute if entity @s[tag=!cable.core] run return run kill @s
    execute at @s align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run return run function ./node/core/summon
    execute at @s align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./node/core/add
    kill @s

function ./node/wire/destroy:
    # @context as @e[type=item_display,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute at @s align xyz positioned ^ ^ ^1 as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./node/wire/to_core
    function ./node/wire/to_core

function ./node/core/destroy:
    # @context as @e[type=item_display,tag=cable.wire]
    playsound block.stone.break block @a ~ ~ ~
    scoreboard players operation #predicate cable.type = @s cable.type
    execute at @s align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] run function ./node/core/destroy_2:
        scoreboard players operation #predicate cable.direction = @s cable.direction
        execute rotated as @s positioned ^ ^ ^1 as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./node/wire/to_core
        execute if entity @s[tag=!cable.core] run return run kill @s
        execute as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./node/core/add
        kill @s
    kill @s