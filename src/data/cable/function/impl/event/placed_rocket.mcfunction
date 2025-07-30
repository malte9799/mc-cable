advancement revoke @s only cable:placed_rocket

tag @s add cable.placer

execute as @n[type=firework_rocket,predicate=cable:is_cable_block] at @s align xyz run function ./placed_rocket_2 with entity @s FireworksItem.components."minecraft:custom_data":
	data remove storage cable:data input
	$data modify storage cable:data input set from storage cable:data registry[{id:$(id)}]
	execute unless data storage cable:data input run return run kill @s
	execute run function cable:impl/place
	kill @s

tag @s remove cable.placer

execute if entity @e[limit=1,type=firework_rocket,predicate=cable:is_cable_block] run function ./placed_rocket