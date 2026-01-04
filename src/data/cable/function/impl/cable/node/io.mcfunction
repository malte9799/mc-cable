function ./io/summon:
    # @execute as @e[tag=cable.node] 
    # OR
    # @context rotated {...} summon item_display
    # @input storage cable:data input - Cable registry entry
    function ./wire/summon
    tag @s add cable.io
    tag @s add cable.io.extract
    function ./io/update_model
    execute 
        positioned as @s 
        align xyz 
        unless entity @n[dx=0,tag=cable.connector,predicate=cable:same_direction,type=item_frame] 
        positioned ~.5 ~.5 ~.5
        summon item_frame 
        run function ./io/connector/summon

function ./io/destroy:
    # @conext as @e[tag=cable.io,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction
    execute 
        at @s align xyz 
        unless entity @e[dx=0,tag=cable.io,predicate=!cable:same_type,predicate=cable:same_direction,type=item_display] 
        as @n[dx=0,tag=cable.connector,predicate=cable:same_direction,type=item_frame] 
        run function ./io/connector/destroy

function ./io/update_model:
    data modify entity @s[tag=!cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [2f]
    data modify entity @s[tag=!cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [3f]
    data modify entity @s[tag=cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [4f]
    data modify entity @s[tag=cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [5f]
