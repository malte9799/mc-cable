#> cable:v1.0.0/update/offset/3
#
#> cable:v1.0.0/update
#
# @context align xyz

execute store result score #index cable.type run data get storage cable:data temp[0].i
execute if score @s cable.type = #index cable.type run tp @s ^-0.2 ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[1].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^ ^
execute store result score #index cable.type run data get storage cable:data temp[2].i
execute if score @s cable.type = #index cable.type run tp @s ^0.2 ^-0.2 ^
