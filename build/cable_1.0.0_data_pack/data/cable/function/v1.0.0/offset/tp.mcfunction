#> cable:v1.0.0/offset/tp
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

execute if score @s cable.direction matches 0 run rotate @s ~ ~
execute if score #count cable.type matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ^ ^ ^
execute if score #count cable.type matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/offset/tp_2

execute if score #count cable.type matches 3 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/offset/tp_3

execute if score #count cable.type matches 4.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/offset/tp_4-8
