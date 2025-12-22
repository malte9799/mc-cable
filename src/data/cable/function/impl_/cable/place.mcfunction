## @context align xyz
## @input Cable registry Entry, storage, cable:data, input, {type: string, id: int, components: {custom_model_data:string, ...}}

# store cable id for predicate checks
execute store result score #predicate cable.type run data get storage cable:data input.id
#! @debug remove if cable is already placed if this block
execute as @e[limit=1,dx=0,type=item_display,tag=cable,predicate=cable:same_type] run return run function ./destroy

# Check if cable can be placed
execute unless block ~ ~ ~ #cable:replaceable run return fail
# Max 8 different cables per block
execute store result score #count cable.math if entity @e[dx=0,type=item_display,tag=cable.core]
execute if score #count cable.math matches 8.. run return fail
# Place a moving piston to prevent other blocks
setblock ~ ~ ~ minecraft:moving_piston destroy
playsound block.stone.place block @a ~ ~ ~

# Network init
scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

# Check all 6 directions for connections: io and cables
scoreboard players set #predicate cable.direction 1 # east
execute rotated -90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire
scoreboard players set #predicate cable.direction -1 # west
execute rotated 90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire
scoreboard players set #predicate cable.direction 2 # up
execute rotated 0 -90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire
scoreboard players set #predicate cable.direction -2 # down
execute rotated 0 90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire
scoreboard players set #predicate cable.direction 3 # south
execute rotated 0 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire
scoreboard players set #predicate cable.direction -3 # north
execute rotated 180 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/wire

scoreboard players set #predicate cable.direction 1 # east
execute rotated 90 0 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io
scoreboard players set #predicate cable.direction -1 # west
execute rotated -90 0 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io
scoreboard players set #predicate cable.direction 2 # up
execute rotated 0 -90 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io
scoreboard players set #predicate cable.direction -2 # down
execute rotated 0 90 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io
scoreboard players set #predicate cable.direction 3 # south
execute rotated 0 0 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io
scoreboard players set #predicate cable.direction -3 # north
execute rotated 180 0 positioned ^ ^ ^1 if function #cable:events/can_connect run function ./place/io

function ./place/io:
    execute if score #new cable.network.low matches 0 run function ./network/gen_new
    execute positioned ^ ^ ^-1 summon item_display run function ./render/io/init

function ./place/wire:
    execute if score #new cable.network.low matches 1.. run function ./network/regen
    execute if score #new cable.network.low matches 0 run function ./network/copy

    execute positioned ^ ^ ^-1 summon item_display run function ./render/wire/init
    scoreboard players operation #predicate cable.direction *= #-1 cable.math
    execute as @e[limit=1,dx=0,type=item_display,tag=cable.core,tag=!cable.wire,predicate=cable:same_type] facing ^ ^ ^-1 run return run function ./render/wire/init
    execute facing ^ ^ ^-1 summon item_display run function ./render/wire/init

execute unless entity @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] summon item_display run function ./render/core/init

data remove storage cable:data input
function ./offset
