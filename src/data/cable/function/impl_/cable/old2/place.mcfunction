## @context align xyz
## @input Cable registry entry, storage, cable:data, input

#! @debug remove if cable is already placed if this block
execute store result score #predicate cable.type run data get storage cable:data input.type_id
execute as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run return run function ./node/core/destroy

execute unless block ~ ~ ~ #cable:replaceable run return fail
execute store result score #count cable.math if entity @e[dx=0,type=item_display,tag=cable.core]
execute if score #count cable.math matches 8.. run return fail
setblock ~ ~ ~ minecraft:moving_piston destroy
playsound block.stone.place block @a ~ ~ ~

execute store result score #predicate cable.type run data get storage cable:data input.type_id
scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

# Check all 6 directions for cable connections
scoreboard players set #predicate cable.direction 1 # east
execute rotated -90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
scoreboard players set #predicate cable.direction -1 # west
execute rotated 90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
scoreboard players set #predicate cable.direction 2 # up
execute rotated 0 -90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
scoreboard players set #predicate cable.direction -2 # down
execute rotated 0 90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
scoreboard players set #predicate cable.direction 3 # south
execute rotated 0 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
scoreboard players set #predicate cable.direction -3 # north
execute rotated 180 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./place_2
function ./place_2:
    # @context align xyz rotated {...} as @e[tag=cable.core,predicate=cable:same_type]
    # @input Cable id, score, cable.type, #predicate
    execute if score #new cable.network.low matches 1.. run function ./network/regen
    execute if score #new cable.network.low matches 0 run function ./network/copy_to_new
    execute positioned ^ ^ ^-1 summon item_display run function ./node/wire/summon
    scoreboard players operation #predicate cable.direction *= #-1 cable.math
    execute as @e[limit=1,dx=0,type=item_display,tag=cable.core,tag=!cable.wire,predicate=cable:same_type] facing ^ ^ ^-1 run return run function ./node/wire/summon
    execute facing ^ ^ ^-1 summon item_display run function ./node/wire/summon

execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] summon item_display run function ./node/core/summon
data remove storage cable:data input
function ./offset