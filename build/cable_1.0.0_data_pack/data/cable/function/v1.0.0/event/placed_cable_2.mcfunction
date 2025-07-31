#> cable:v1.0.0/event/placed_cable_2
#

data remove storage cable:data input
$data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
execute unless data storage cable:data input run return run kill @s
execute rotated 0 0 run function cable:v1.0.0/cable/place
kill @s
