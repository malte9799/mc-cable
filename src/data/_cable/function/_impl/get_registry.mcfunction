execute run function ./get_registry2 with entity @s data.cable:
    data remove storage cable:data input
    $data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
return 1