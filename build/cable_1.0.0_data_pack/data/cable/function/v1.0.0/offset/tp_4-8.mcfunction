#> cable:v1.0.0/offset/tp_4-8
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int

execute store result score #index cable.type run data get storage cable:data temp[0].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[1].i
execute if score @s cable.type = #index cable.type run tp @s ^0.2 ^ ^
execute store result score #index cable.type run data get storage cable:data temp[2].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[3].i
execute if score @s cable.type = #index cable.type run tp @s ^-0.2 ^ ^
execute store result score #index cable.type run data get storage cable:data temp[4].i
execute if data storage cable:data temp[4] if score @s cable.type = #index cable.type run tp @s ^0.2 ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[5].i
execute if data storage cable:data temp[5] if score @s cable.type = #index cable.type run tp @s ^0.2 ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[6].i
execute if data storage cable:data temp[6] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[7].i
execute if data storage cable:data temp[7] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^0.2 ^
