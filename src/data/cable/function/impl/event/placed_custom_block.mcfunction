advancement revoke @s only cable:placed_custom_block

tag @s add cable.placer

execute as @n[type=glow_item_frame,tag=cable.block,distance=..10] at @s align xyz run function ./placed_custom_block_2 with entity @s Item.components."minecraft:custom_data":
	data remove storage cable:data input
	$data modify storage cable:data input set from storage cable:data registry[{id:$(id)}]
	execute unless data storage cable:data input run return run kill @s
	execute rotated 0 0 run function cable:impl/place
	kill @s

tag @s remove cable.placer

execute if entity @e[limit=1,type=glow_item_frame,distance=..10,tag=cable.block] run function ./placed_custom_block