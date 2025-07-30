#> cable:v1.0.0/offset/tp_2
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

execute store result score #index cable.type run data get storage cable:data temp[0].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
execute store result score #index cable.type run data get storage cable:data temp[1].i
execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
