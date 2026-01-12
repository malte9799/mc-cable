function ./wire/summon:
    # @context as @e[tag=cable.node]
    # OR
    # @context rotated {...} summon item_display
    # @input storage cable:data input - Cable registry entry
    execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
    function ./init
    tag @s add cable.wire
    data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1f],flags:[1b]}
    execute align xyz unless entity @e[limit=1,dx=0,tag=cable.core,predicate=cable:same_type,type=item_display] run function ./core/add

function ./wire/destroy:
    # @context as @e[type=item_display,tag=cable.wire]
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction

    execute at @s positioned ^ ^ ^1 align xyz as @e[dx=0,limit=1,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction,type=item_display] at @s run function ./wire/destroy_2
    execute at @s run function ./wire/destroy_2:
        execute positioned ^ ^ ^.5 as @e[distance=...1,tag=cable.collision.wire,predicate=cable:same_type,type=item_display] run function cable:killme
        execute positioned ^ ^ ^.2 as @e[distance=...1,tag=cable.interaction.wire,predicate=cable:same_type,type=interaction] run function cable:killme
        execute positioned ^ ^ ^.4 as @e[distance=...1,tag=cable.interaction.wire,predicate=cable:same_type,type=interaction] run function cable:killme

        execute if entity @s[tag=!cable.core] run return run kill @s
        execute align xyz unless entity @e[limit=1,dx=0,tag=cable.wire,tag=!cable.core,predicate=cable:same_type,type=item_display] run return run function ./core/summon
        execute align xyz as @e[limit=1,dx=0,tag=cable.wire,tag=!cable.core,predicate=cable:same_type,type=item_display] run function ./core/add
        kill @s