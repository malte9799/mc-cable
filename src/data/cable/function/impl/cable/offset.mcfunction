execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] rotated as @s run function ./offset/cable:
    scoreboard players operation #predicate cable.direction = @s cable.direction
    data modify storage cable:data temp.sort set value [{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1}]
    execute as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function ./offset/enumerate
    data remove storage cable:data temp.sort[{i:-1}]
    execute store result score #count cable.type run data get storage cable:data temp.sort

    function ./offset/cable_2
    scoreboard players operation #predicate cable.direction *= #-1 cable.math
    execute positioned ^ ^ ^1 run function ./offset/cable_2
    function ./offset/cable_2:
        execute if predicate cable:direction_ew rotated 90 0 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function ./offset/tp
        execute if predicate cable:direction_ud rotated 0 90 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function ./offset/tp
        execute if predicate cable:direction_sn rotated 0 0 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function ./offset/tp
    execute positioned ^ ^ ^1 run function ./offset/core

execute align xyz run function ./offset/core:
    data modify storage cable:data temp.sort set value [{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1}]
    execute as @e[type=item_display,dx=0,tag=cable.core,tag=!cable.checked] run function ./offset/enumerate
    data remove storage cable:data temp.sort[{i:-1}]
    execute store result score #count cable.type run data get storage cable:data temp.sort
    execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_ew] rotated 90 0 run return run function ./offset/core_2
    execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_sn] rotated 0 0 run return run function ./offset/core_2
    execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_ud] rotated 0 90 run return run function ./offset/core_2
    execute rotated 0 0 run function ./offset/core_2
    function ./offset/core_2:
        execute as @e[dx=0,type=item_display,tag=cable.core,tag=!cable.wire] run function ./offset/tp

function ./offset/enumerate:
    execute store result storage cable:data temp.index int 1 run scoreboard players get @s cable.type
    execute run function ./offset/enumerate_2 with storage cable:data temp:
        $execute store result storage cable:data temp.sort[$(index)].i int 1 run scoreboard players get @s cable.type 

function ./offset/tp:
    execute if score @s cable.direction matches 0 run rotate @s ~ ~
    execute if score #count cable.type matches 1 align xyz positioned ~.5 ~.5 ~.5 run tp @s ^ ^ ^
    execute if score #count cable.type matches 2 align xyz positioned ~.5 ~.5 ~.5 run function ./offset/tp_2:
        execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
        execute if score @s cable.type = #index cable.type run tp @s ^ ^.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
        execute if score @s cable.type = #index cable.type run tp @s ^ ^-.2 ^

    execute if score #count cable.type matches 3 align xyz positioned ~.5 ~.5 ~.5 run function ./offset/tp_3:
        execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
        execute if score @s cable.type = #index cable.type run tp @s ^-.2 ^.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
        execute if score @s cable.type = #index cable.type run tp @s ^ ^ ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[2].i
        execute if score @s cable.type = #index cable.type run tp @s ^.2 ^-.2 ^

    execute if score #count cable.type matches 4.. align xyz positioned ~.5 ~.5 ~.5 run function ./offset/tp_4-8:
        execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
        execute if score @s cable.type = #index cable.type run tp @s ^ ^.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
        execute if score @s cable.type = #index cable.type run tp @s ^.2 ^ ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[2].i
        execute if score @s cable.type = #index cable.type run tp @s ^ ^-.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[3].i
        execute if score @s cable.type = #index cable.type run tp @s ^-.2 ^ ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[4].i
        execute if data storage cable:data temp.sort[4] if score @s cable.type = #index cable.type run tp @s ^.2 ^.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[5].i
        execute if data storage cable:data temp.sort[5] if score @s cable.type = #index cable.type run tp @s ^.2 ^-.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[6].i
        execute if data storage cable:data temp.sort[6] if score @s cable.type = #index cable.type run tp @s ^-.2 ^-.2 ^
        execute store result score #index cable.type run data get storage cable:data temp.sort[7].i
        execute if data storage cable:data temp.sort[7] if score @s cable.type = #index cable.type run tp @s ^-.2 ^.2 ^
    
    function ./collision/offset
    function ./interaction/offset