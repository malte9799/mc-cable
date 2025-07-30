#> cable:v1.0.0/event/placed_rocket_2
#

data remove storage cable:data input
$data modify storage cable:data input set from storage cable:data registry[{id:$(id)}]
execute unless data storage cable:data input run return run kill @s
function cable:v1.0.0/place
kill @s
