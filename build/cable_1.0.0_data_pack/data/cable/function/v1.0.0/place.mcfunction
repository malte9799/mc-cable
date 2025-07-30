#> cable:v1.0.0/place
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int
#	   components: {}

execute store result score #predicate cable.type run data get storage cable:data input.index
execute as @e[limit=1, type=item_display, dx=0, tag=cable, predicate=cable:same_type] run return run function cable:v1.0.0/destroy

execute unless block ~ ~ ~ #minecraft:replaceable run return fail
execute if predicate {condition: "minecraft:location_check", predicate: {block: {state: {waterlogged: "true"}}}} run setblock ~ ~ ~ water destroy
execute unless block ~ ~ ~ water run setblock ~ ~ ~ air destroy
execute store result score #count cable.math if entity @e[type=item_display, dx=0, tag=cable.core]
execute if score #count cable.math matches 8.. run return fail

scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

scoreboard players set #predicate cable.direction 1
execute rotated -90 0 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update
scoreboard players set #predicate cable.direction -1
execute rotated 90 0 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update
scoreboard players set #predicate cable.direction 2
execute rotated 0 -90 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update
scoreboard players set #predicate cable.direction -2
execute rotated 0 90 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update
scoreboard players set #predicate cable.direction 3
execute rotated 0 0 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update
scoreboard players set #predicate cable.direction -3
execute rotated 180 0 positioned ^ ^ ^1 as @e[type=item_display, limit=1, dx=0, predicate=cable:same_type] run function cable:v1.0.0/place/update

execute if score #new cable.network.low matches 0 positioned ~0.5 ~0.5 ~0.5 summon item_display run function cable:v1.0.0/place/core

execute if entity @e[limit=1, type=item_display, dx=0, tag=cable.core, tag=!cable.cable] as @e[type=item_display, dx=0, tag=cable.core] run function cable:v1.0.0/update/enumerate
execute as @e[type=item_display, dx=0, tag=cable.core, tag=!cable.cable] run function cable:v1.0.0/update/offset
