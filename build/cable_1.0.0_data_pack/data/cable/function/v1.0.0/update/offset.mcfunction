#> cable:v1.0.0/update/offset
#
#> cable:v1.0.0/update
#
# @context align xyz

execute if data storage cable:data temp[{i: -1}] run data remove storage cable:data temp[{i: -1}]
execute store result score #count cable.type run data get storage cable:data temp
scoreboard players operation #dir cable.math = @s cable.direction
scoreboard players operation #dir cable.math %= #2 cable.math

execute if score #dir cable.math matches 0 facing ^ ^ ^-1 run function cable:v1.0.0/update/offset_2
execute if score #dir cable.math matches 1 run function cable:v1.0.0/update/offset_2
