#> cable:register_2
#

execute store result storage cable:data input.index int 1 run data get storage cable:data registry
$data modify storage cable:data input.index set from storage cable:data registry[{type:$(type)}].index
$execute unless data storage cable:data registry[{type:$(type)}] run data modify storage cable:data registry append value {type:$(type)}
$data modify storage cable:data registry[{type:$(type)}] set from storage cable:data input
data remove storage cable:data input