function ./collision/spawn:
    execute as @s[tag=cable.collision] run return fail
    tag @s add cable.collision
    scoreboard players operation #predicate cable.type = @s cable.type

    execute as @s[tag=cable.core] at @s run function ./collision/spawn/box:
        summon item_display ~ ~-.1 ~ {Tags:["cable","cable.offset","cable.collision","temp"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["cable","cable.collision","temp"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:0,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.2}]}]}
    execute as @s[tag=cable.cable] at @s align xyz positioned ^ ^ ^1 unless entity @e[limit=1,dx=0,type=item_display,tag=cable.collision,predicate=cable:same_type] at @s positioned ^ ^ ^.5 run function ./collision/spawn/box
    # summon interaction ~ ~ ~ {width:0f,height:-0.1f,Tags:["cable","cable.offset","cable.collision","temp"],Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["cable","cable.collision","temp"],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}],attributes:[{id:"minecraft:scale",base:0.2}]}]}
    # ride @n[limit=1,dx=0,type=interaction,tag=cable.collision,tag=cable.offset] mount @s


function ./collision/remove:
    execute as @s[tag=cable.collision] run tag @s remove cable.collision
    execute as @s[tag=cable.collision] run return fail

    execute as @e[type=item_display,distance=...6,tag=cable.collision,tag=cable.offset] at @s run function ./collision/kill:
        tp @s ~ -1000 ~
        execute on passengers run kill @s
        kill @s