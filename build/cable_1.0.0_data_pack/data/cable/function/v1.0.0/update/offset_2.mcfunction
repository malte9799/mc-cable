#> cable:v1.0.0/update/offset_2
#
#> cable:v1.0.0/update
#
# @context align xyz

execute if score #count cable.type matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ^ ^ ^
execute if score #count cable.type matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/update/offset/2

execute if score #count cable.type matches 3 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/update/offset/3

execute if score #count cable.type matches 4.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v1.0.0/update/offset/4
