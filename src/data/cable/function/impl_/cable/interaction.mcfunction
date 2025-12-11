function ./interaction/tick:
    execute store result score #reach cable.math run attribute @p minecraft:block_interaction_range get 10
    
    execute as @a at @s anchored eyes positioned ^ ^ ^ run function ./interaction/search:
        # particle dolphin
        scoreboard players remove #reach cable.math 1
        tag @e[type=item_display,distance=...5,tag=cable.node] add cable.found
        tag @e[type=interaction,distance=..1,tag=cable.interaction] add cable.found
        execute if score #reach cable.math matches 1.. positioned ^ ^ ^.1 if block ~ ~ ~ #cable:replaceable run function ./interaction/search
    execute as @e[type=interaction,tag=cable.interaction,tag=!cable.found] at @s run function cable:killme
    execute as @e[type=item_display,tag=cable.node,tag=cable.found] at @s rotated as @s positioned ~ ~-.1 ~ run function ./interaction/check
    tag @e[tag=cable.found] remove cable.found

function ./interaction/check:
    scoreboard players operation #predicate cable.type = @s cable.type
    scoreboard players operation #predicate cable.direction = @s cable.direction

    execute as @s[tag=cable.core] unless entity @e[type=interaction,distance=...1,tag=cable.interaction.core,predicate=cable:same_type] summon interaction run function ./interaction/summon/core:
        tp @s ~ ~ ~ ~ ~
        data merge entity @s {Tags:['cable','cable.interaction','cable.interaction.core'],width:.2,height:.2}
        scoreboard players operation @s cable.type = #predicate cable.type
        function #bs.interaction:on_hover {run:"particle flame",executor:"target"}

    execute as @s[tag=cable.wire] run function ./interaction/summon/wire:
        execute positioned ^ ^ ^.2 unless entity @e[type=interaction,distance=...1,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] summon interaction run function ./interaction/summon/wire_2
        execute positioned ^ ^ ^.4 unless entity @e[type=interaction,distance=...1,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] summon interaction run function ./interaction/summon/wire_2:
            tp @s ~ ~ ~ ~ ~
            data merge entity @s {Tags:['cable','cable.interaction','cable.interaction.wire'],width:.2,height:.2}
            scoreboard players operation @s cable.type = #predicate cable.type
            scoreboard players operation @s cable.direction = #predicate cable.direction
            function #bs.interaction:on_hover {run:"particle flame",executor:"target"}
        
# function ./interaction/offset:
#     execute as @s[tag=cable.core] at @s run tp @n[type=interaction,distance=...6,tag=cable.interaction.core,predicate=cable:same_type] ~ ~ ~
#     execute as @s[tag=cable.wire] at @s positioned ^ ^ ^.2 run tp @n[type=interaction,distance=...6,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~
#     execute as @s[tag=cable.wire] at @s positioned ^ ^ ^.4 run tp @n[type=interaction,distance=...6,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~