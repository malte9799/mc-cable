function ./render/core/init:
    # @input Cable Registry Entry, storage, cable:data, input
    # @input Cable Type Index, score, #predicate cable.type
    execute store result score #predicate cable.type run data get storage cable:data input.type_id
    tp @s ~.5 ~.5 ~.5 ~ ~
    execute unless score @s cable.network.low matches 1.. run function ./network/new_id
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.core'],item_display:'fixed',item:{id:'coal'}}
    data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data".floats set value [0f]
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players set @s cable.direction 0

function ./render/core/destroy:
    ## @context align xyz as @e[type=item_display,tag=cable.core] run
    scoreboard players operation #predicate cable.type = @s cable.type
    # tag @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] add cable.checked
    execute as @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] run say remove

function ./render/core/add:
    data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]
    tag @s add cable.core


function ./render/wire/init:
    ## @context align xyz (as @e[type=item_display] | summon item_display) run
    ## @input Cable Registry Entry, storage, cable:data, input
    tp @s ~.5 ~.5 ~.5 ~ ~
    function ./network/set
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.wire'],item_display:'fixed',item:{id:'coal'}}
    data modify entity @s item.components set from storage cable:data input.components
    data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1f],flags:[true]}
    # scoreboard players operation @s cable.type = #predicate cable.type
    execute store result score @s cable.type run data get storage cable:data input.type_id
    # function ./render/wire/set_direction
    scoreboard players operation @s cable.direction = #predicate cable.direction
    execute unless entity @e[limit=1,type=item_display,tag=cable.core,dx=0,predicate=cable:same_type] run function ./render/core/add

function ./render/wire/remove:
    ## @context align xyz as @e[type=item_display,tag=cable.wire] rotated as @s run
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute positioned ^ ^ ^1 as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./render/wire/to_core
    function ./render/wire/to_core

function ./render/wire/to_core:
    ## @context align xyz as @e[type=item_display,tag=cable.wire] run
    execute if entity @s[tag=!cable.core] run return run kill @s
    execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run return run function ./render/core/init
    execute as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function ./render/core/add
    kill @s

# function ./render/wire/set_direction:
#     execute as @s[x_rotation=0,y_rotation=-90] run scoreboard players set @s cable.direction 1 # east
#     execute as @s[x_rotation=0,y_rotation=90] run scoreboard players set @s cable.direction -1 # west
#     execute as @s[x_rotation=-90,y_rotation=0] run scoreboard players set @s cable.direction 2 # up
#     execute as @s[x_rotation=90,y_rotation=0] run scoreboard players set @s cable.direction -2 # down
#     execute as @s[x_rotation=0,y_rotation=0] run scoreboard players set @s cable.direction 3 # south
#     execute as @s[x_rotation=0,y_rotation=180] run scoreboard players set @s cable.direction -3 # north


function ./render/io/init:
    function ./render/wire/init
    data modify entity @s item.components."minecraft:custom_model_data".floats set value [2f]
    tag @s add cable.io
    