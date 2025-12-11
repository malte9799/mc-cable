$data modify storage cable:data input set value { type:"$(type)", components:$(components) }  
# $data modify storage cable:data input.components.custom_data.cable.type set value $(type)

execute store result storage cable:data input.type_id int 1 run data get storage cable:data registry
$data modify storage cable:data input.type_id set from storage cable:data registry[{type:"$(type)"}].type_id

$execute unless data storage cable:data registry[{type:"$(type)"}] run data modify storage cable:data registry append value {type:"$(type)"}
$data modify storage cable:data registry[{type:"$(type)"}] set from storage cable:data input
# data remove storage cable:data input
