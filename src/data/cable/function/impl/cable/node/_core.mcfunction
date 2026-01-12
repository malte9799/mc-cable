function ./core/summon:
    # @context as @e[tag=cable.node]
    # OR
    # @context summon item_display
    # @input storage cable:data input - Cable registry entry
    scoreboard players set #predicate cable.direction 0
    execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
    function ./init
    tag @s add cable.core
    data modify entity @s item.components."minecraft:custom_model_data" set value {flags:[0b]}
    function ./offset

function ./core/destroy:
    scoreboard players operation #predicate cable.type = @s cable.type
    execute at @s as @e[distance=...1,tag=cable.collision.core,predicate=cable:same_type,type=item_display] run function cable:killme
    execute at @s as @e[distance=...1,tag=cable.interaction.core,predicate=cable:same_type,type=interaction] run function cable:killme
    kill @s
    function ./offset

function ./core/add:
    data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0b
    tag @s add cable.core