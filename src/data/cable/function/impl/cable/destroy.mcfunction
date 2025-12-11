function ./destroy_wire:
    raw # @public
    raw # @context as @e[tag=cable.wire] at @s

    execute unless entity @s[tag=cable.wire] run return fail
    playsound block.stone.break block @a ~ ~ ~

    scoreboard players operation #predicate cable.type = @s cable.type
    # scoreboard players operation #predicate cable.direction = @s cable.direction

    execute if entity @s[tag=cable.io] run function ./node/io/destroy
    function ./node/wire/destroy

    function ./network/new_id
    execute align xyz as @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] run function ./network/set_new_walk

    tag @e[type=item_display,tag=cable.checked] remove cable.checked


raw # @public
raw # @conext as @e[tag=cable.node] at @s

execute unless entity @s[tag=cable.node] run return fail
playsound block.stone.break block @a ~ ~ ~

scoreboard players operation #predicate cable.type = @s cable.type
# execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] at @s run function ./destroy_wire

execute align xyz run tag @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] add cable.checked
# execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] rotated as @s positioned ^ ^ ^1 run tag @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] add cable.checked
tag @e[type=item_display,tag=cable.checked] remove cable.checked

execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] at @s run function ./destroy_2:
    scoreboard players operation #predicate cable.type = @s cable.type
    # scoreboard players operation #predicate cable.direction = @s cable.direction

    execute if entity @s[tag=cable.io] run function ./node/io/destroy
    function ./node/wire/destroy

    tag @s add cable.me
    execute align xyz if entity @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.io,tag=!cable.me,predicate=cable:same_type] run function ./network/new_id
    execute align xyz as @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] run function ./network/set_new_walk
    tag @s remove cable.me
    tag @e[type=item_display,tag=cable.checked] remove cable.checked

tag @e[type=item_display,tag=cable.checked] remove cable.checked
execute align xyz as @e[dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function ./node/core/destroy
execute if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air
