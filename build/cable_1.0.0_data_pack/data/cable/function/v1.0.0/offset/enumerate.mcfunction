#> cable:v1.0.0/offset/enumerate
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int

$execute store result storage cable:data temp[$(type)].i int 1 run scoreboard players get @s cable.type 
