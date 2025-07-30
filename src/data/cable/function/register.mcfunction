data modify storage cable:data input.components.custom_data.id set from storage cable:data input.id
execute run function register_2 with storage cable:data input:
    execute store result storage cable:data input.index int 1 run data get storage cable:data registry
    $data modify storage cable:data input.index set from storage cable:data registry[{id:$(id)}].index
    data modify storage cable:data input.components.custom_data.type set from storage cable:data input.index
    $execute unless data storage cable:data registry[{id:$(id)}] run data modify storage cable:data registry append value {id:$(id)}
    $data modify storage cable:data registry[{id:$(id)}] set from storage cable:data input
    data remove storage cable:data input
