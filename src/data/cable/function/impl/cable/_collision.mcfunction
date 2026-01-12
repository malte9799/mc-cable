#!########################
#!#######  V2  ###########
#!########################
# function ./collision/tick:
    # @context as @a at @s
    # say hi
    # execute as @e[tag=cable.collision,type=item_display] at @s run return 1
    # execute as @e[distance=..2,tag=cable.node,type=item_display] at @s run function ./tick2:
    #     tag @s add cable.collision


#!########################
#!#######  V1  ###########
#!########################
function ./collision/tick:
    execute as @e[tag=cable.collision,type=item_display] at @s run particle ash
    execute as @a at @s run function ./collision/tick_2:
        execute positioned ~ ~1 ~ as @e[distance=3.5..,tag=cable.collision,type=item_display] at @s run function ./collision/destroy
        execute anchored eyes positioned ^ ^ ^ positioned ~ ~.38 ~ run function ./collision/tick_3
        function ./collision/tick_3
        function ./collision/tick_3:
            execute as @e[distance=..2,tag=cable.node,type=item_display] at @s align xyz positioned ~.5 ~.5 ~.5 run function ./collision/tick_4:
                scoreboard players operation #predicate cable.type = @s cable.type
                scoreboard players operation #predicate cable.direction = @s cable.direction
                execute if entity @s[tag=cable.core] unless entity @n[distance=...6,tag=cable.collision.core,predicate=cable:same_type,type=item_display] at @s positioned ~ ~-.0995 ~ summon item_display run function ./collision/summon/core
                execute if entity @s[tag=cable.wire] rotated as @s positioned ^ ^ ^.5 unless entity @n[distance=...6,tag=cable.collision.wire,predicate=cable:same_type,type=item_display] at @s positioned ^ ^ ^.5 positioned ~ ~-.0995 ~ summon item_display run function ./collision/summon/wire

function ./collision/destroy:
    execute on passengers run function ./collision/destroy_2:
        tp @s ~ -1000 ~
        kill @s
    kill @s

function ./collision/summon/core:
    function ./collision/summon
    tag @s add cable.collision.core

function ./collision/summon/wire:
    function ./collision/summon
    tag @s add cable.collision.wire


function ./collision/summon:
    tp @s ~ ~ ~ ~ ~
    data merge entity @s {Tags:['cable','cable.collision']}
    scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    execute at @s run summon shulker ~ -10 ~ {
        Tags:["cable","cable.collision","cable.init"],
        Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Invisible:1b,
        active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],
        attributes:[{id:"minecraft:scale",base:0.199}]}
    execute at @s positioned ~ -10 ~ run ride @n[type=shulker,tag=cable.collision,tag=cable.init] mount @s
    execute on passengers run tag @s remove cable.init

function ./collision/offset:
    execute as @s[tag=cable.core] at @s run tp @n[type=item_display,distance=...6,tag=cable.hitcollisionbox.core,predicate=cable:same_type] ~ ~ ~
    execute as @s[tag=cable.wire] at @s positioned ^ ^ ^.2 run tp @n[type=item_display,distance=...6,tag=cable.collision.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~
    execute as @s[tag=cable.wire] at @s positioned ^ ^ ^.4 run tp @n[type=item_display,distance=...6,tag=cable.collision.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~