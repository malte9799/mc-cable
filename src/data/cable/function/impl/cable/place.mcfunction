function ./m.place:
    raw # @public
    raw # Place a cable
    raw # @context positioned ...
    raw # @args $(type) as string
    data remove storage cable:data input
    $data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
    execute store result score #predicate cable.type run data get storage cable:data input.type_id
    function ./place


raw # @public
raw # Place a cable
raw # @context positioned {position to place}
raw # @input Cable Registry entry, storage, cable:data, input, {type:string,type_id:int,components:{item_model:string,...}}

# Check and init data
execute unless data storage cable:data input run return run function cable:impl/util/error/place_no_input
execute store result score #predicate cable.type run data get storage cable:data input.type_id

#! @debug remove if cable is already placed if this block
execute align xyz as @n[dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] at @s run return run function ./destroy

# Check if cable can be placed here
execute align xyz if entity @e[dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run return fail
execute unless block ~ ~ ~ #cable:replaceable run return fail
execute align xyz store result score #count cable.math if entity @e[dx=0,type=item_display,tag=cable.core]
execute if score #count cable.math matches 8.. run return fail
setblock ~ ~ ~ minecraft:moving_piston destroy
playsound block.stone.place block @a ~ ~ ~

scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

# Check all 6 directions for cables
scoreboard players set #predicate cable.direction 1 # east
execute align xyz positioned ~1 ~ ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated -90 0 positioned ~.5 ~.5 ~.5 run function ./place/wire
scoreboard players set #predicate cable.direction -1 # west
execute align xyz positioned ~-1 ~ ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 90 0 positioned ~.5 ~.5 ~.5 run function ./place/wire
scoreboard players set #predicate cable.direction 2 # up
execute align xyz positioned ~ ~1 ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 -90 positioned ~.5 ~.5 ~.5 run function ./place/wire
scoreboard players set #predicate cable.direction -2 # down
execute align xyz positioned ~ ~-1 ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 90 positioned ~.5 ~.5 ~.5 run function ./place/wire
scoreboard players set #predicate cable.direction 3 # south
execute align xyz positioned ~ ~ ~1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 0 positioned ~.5 ~.5 ~.5 run function ./place/wire
scoreboard players set #predicate cable.direction -3 # north
execute align xyz positioned ~ ~ ~-1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 180 0 positioned ~.5 ~.5 ~.5 run function ./place/wire

# New network id if no neigbour Cable is found
execute if score #new cable.network.low matches 0 run function ./network/new_id

# Check all 6 directions for #cable:events/can_connect function (IO)
scoreboard players set #predicate cable.direction 1 # east
execute align xyz rotated -90 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io
scoreboard players set #predicate cable.direction -1 # west
execute align xyz rotated 90 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io
scoreboard players set #predicate cable.direction 2 # up
execute align xyz rotated 0 -90 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io
scoreboard players set #predicate cable.direction -2 # down
execute align xyz rotated 0 90 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io
scoreboard players set #predicate cable.direction 3 # south
execute align xyz rotated 0 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io
scoreboard players set #predicate cable.direction -3 # north
execute align xyz rotated 180 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function ./place/io

# If nothing has been placed yet, place a core
execute align xyz unless entity @n[dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] summon item_display run function ./place/core

# Offset for bundeled cables
execute align xyz run function ./offset
# cleanup
data remove storage cable:data input

# Function Definitions
function ./place/core:
    function ./network/set_new
    function ./node/core/summon

function ./place/wire:
    execute if score #new cable.network.low matches 1.. run function ./network/set_new_all
    execute if score #new cable.network.low matches 0 run function ./network/copy_new

    execute positioned ^ ^ ^-1 align xyz summon item_display run function ./place/wire_2
    scoreboard players operation #predicate cable.direction *= #-1 cable.math
    execute facing ^ ^ ^-1 align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.core,tag=!cable.wire,predicate=cable:same_type] run return run function ./place/wire_2
    execute facing ^ ^ ^-1 align xyz summon item_display run function ./place/wire_2

    function ./place/wire_2:
        function ./network/set_new
        function ./node/wire/summon

function ./place/io:
    function ./network/set_new
    function ./network/process_queue
    function ./node/io/summon