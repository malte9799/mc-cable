#> cable:v1.0.0/item/wrench/switch/mid
#

execute store result score #index cable.math run data get entity 00000001-0000-0001-0000-000000000001 item.components."minecraft:custom_data".cable.index
scoreboard players add #index cable.math 1
execute store result score #count cable.math run data get storage cable:data registry
execute if score #index cable.math >= #count cable.math run scoreboard players set #index cable.math 0
execute store result entity 00000001-0000-0001-0000-000000000001 item.components."minecraft:custom_data".cable.index int 1 run scoreboard players get #index cable.math