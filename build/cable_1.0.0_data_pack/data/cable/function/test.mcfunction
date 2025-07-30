#> cable:test
#
# function ./offset/tp:
#     execute if score @s cable.direction matches 0 run rotate @s ~ ~
#     execute if score #count cable.type matches 1 align xyz positioned ~.5 ~.5 ~.5 run tp @s ^ ^ ^
#     execute if score #count cable.type matches 2 align xyz positioned ~.5 ~.5 ~.5 run function ./offset/tp_2:
#         execute store result score #index cable.type run data get storage cable:data temp[0].i
#         execute if score @s cable.type = #index cable.type run tp @s ^ ^.2 ^
#         execute store result score #index cable.type run data get storage cable:data temp[1].i
#         execute if score @s cable.type = #index cable.type run tp @s ^ ^-.2 ^
