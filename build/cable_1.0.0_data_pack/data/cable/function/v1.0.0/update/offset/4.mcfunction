#> cable:v1.0.0/update/offset/4
#
#> cable:v1.0.0/update
#
# @context align xyz

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
