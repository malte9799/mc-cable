advancement revoke @s only cable:placed_cable

tag @s add cable.placer
execute as @n[tag=cable.block,distance=..10,type=glow_item_frame] at @s align xyz run function ./placed_cable_2 with entity @s data.cable:
    data remove storage cable:data input
    $data modify storage cable:data input set from storage cable:registry cables[{type:$(type)}]
    execute unless data storage cable:data input run return run kill @s
    execute rotated 0 0 run function cable:impl/cable/place
    kill @s

tag @s remove cable.placer

execute if entity @e[limit=1,tag=cable.block,distance=..10,type=glow_item_frame] run function ./placed_cable