#> cable:v1.0.0/cable/offset/tp_4-8
#
# @context align xyz

execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
execute if score @s cable.type = #index cable.type run tp @s ^0.2 ^ ^
execute store result score #index cable.type run data get storage cable:data temp.sort[2].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[3].i
execute if score @s cable.type = #index cable.type run tp @s ^-0.2 ^ ^
execute store result score #index cable.type run data get storage cable:data temp.sort[4].i
execute if data storage cable:data temp.sort[4] if score @s cable.type = #index cable.type run tp @s ^0.2 ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[5].i
execute if data storage cable:data temp.sort[5] if score @s cable.type = #index cable.type run tp @s ^0.2 ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[6].i
execute if data storage cable:data temp.sort[6] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^-0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[7].i
execute if data storage cable:data temp.sort[7] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^0.2 ^
