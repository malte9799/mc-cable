schedule function cable:impl/tick 1t replace

# execute as @a at @s as @e[type=item_display,tag=cable,distance=..5,tag=!cable.collision] at @s run function ./cable/collision/spawn
# execute as @a at @s as @e[type=item_display,tag=cable,distance=5..,tag=cable.collision] at @s run function ./cable/collision/remove

# execute as @e[type=item_display,tag=cable.core] at @s summon item_display run function ./box:
#     ride @s mount @n[type=item_display,tag=cable.core,dx=0,limit=1]
#     data merge entity @s {Tags:["cable.collision"],item:{id:"minecraft:barrier"}}


# function ./collision:
#     execute align xyz if entity @e[limit=1,type=item_display,tag=cable.node,dx=0,tag=cable.collision] run return fail

#     tag @s add cable.collision

#     summon interaction ~ ~ ~ {
#         Tags:["cable","cable.offset","cable.collision","temp"],
#         height:-0.4f,
#         width:0f,
#         Passengers:[{id:"minecraft:shulker",Silent:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",NoAI:1b,AttachFace:0b,Tags:["temp"],attributes:[{id:"minecraft:scale",base:0.2}]}]}

#     ride @n[limit=1,dx=0,type=interaction,tag=cable.collision,tag=cable.offset] mount @s
