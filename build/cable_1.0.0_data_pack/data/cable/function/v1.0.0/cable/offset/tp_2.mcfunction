#> cable:v1.0.0/cable/offset/tp_2
#
# @context align xyz

execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
