#> cable:v1.0.0/destroy
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int
#	   ?components: {}

execute store result score #predicate cable.type run data get storage cable:data input.index

tag @e[type=item_display, dx=0, tag=cable.network, predicate=cable:same_type] add cable.checked
execute as @e[type=item_display, dx=0, tag=cable.network, predicate=cable:same_type] run function cable:v1.0.0/destory/network

kill @e[type=item_display, tag=cable, dx=0, predicate=cable:same_type]
tag @e[type=item_display, tag=cable.checked] remove cable.checked

# scoreboard players set #predicate cable.direction 1
# execute positioned ~01 ~ ~ as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update
# scoreboard players set #predicate cable.direction -1
# execute positioned ~-1 ~ ~ as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update
# scoreboard players set #predicate cable.direction 2
# execute positioned ~ ~01 ~ as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update
# scoreboard players set #predicate cable.direction -2
# execute positioned ~ ~-1 ~ as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update
# scoreboard players set #predicate cable.direction 3
# execute positioned ~ ~ ~01 as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update
# scoreboard players set #predicate cable.direction -3
# execute positioned ~ ~ ~-1 as @e[limit=1,type=item_display,dx=0,tag=cable.network,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/update

# tag @e[type=item_display,tag=cable.checked] remove cable.checked
# # execute if entity @e[limit=1,type=item_display,dx=0,tag=cable.core,tag=!cable.cable] as @e[type=item_display,dx=0,tag=cable.core] run function ./update/enumerate
# # execute as @e[type=item_display,dx=0,tag=cable.core,tag=!cable.cable] run function ./update/offset

# # execute as @e[type=item_display,dx=0,tag=cable.cable] run function ./update/enumerate
# # execute as @e[type=item_display,dx=0,tag=cable.cable] rotated as @s run function ./update/offset
# # execute as @e[type=item_display,dx=0,tag=cable.cable] run function ./destroy/cable:
# # 	scoreboard players operation #predicate cable.type = @s cable.type
# # 	scoreboard players operation #predicate cable.direction = @s cable.direction
# # 	execute at @s positioned ^ ^ ^1 as @e[limit=1,type=item_display,tag=cable.cable,predicate=cable:same_type,predicate=cable:opposite_direction] run tp @s ~ ~ ~

# function ./destroy/update:
# 	execute if entity @s[tag=!cable.checked] run function ./network/new_id
# 	tag @s add cable.checked

# 	execute as @s[tag=cable.core] unless entity @e[limit=1,type=item_display,tag=cable.cable,tag=!cable.core,dx=0,predicate=cable:same_type] positioned ~.5 ~.5 ~.5 run function ./place/core
# 	execute as @s[tag=cable.core,tag=cable.cable] as @e[limit=1,type=item_display,tag=cable.cable,tag=!cable.core,tag=!cable.me,dx=0,predicate=cable:same_type] run function ./destroy/init_core:
# 		data modify entity @s item.components."minecraft:custom_model_data".flags set value [false]
# 		tag @s add cable.core
# 	kill @s[tag=cable.cable]
# 	# execute align xyz as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:opposite_direction] run function ./update/enumerate
# 	# execute align xyz facing ^ ^ ^-1 as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:opposite_direction] run function ./update/offset

# 	# execute if score #predicate cable.direction matches 1.. align xyz facing ^ ^ ^-1 as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:opposite_direction] run function ./update/offset
# 	# execute if score #predicate cable.direction matches ..-1 align xyz as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:opposite_direction] run function ./update/offset
	
# 	execute run function ./destroy/network:
# 		execute as @e[type=item_display,dx=0,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function ./destroy/network_2:
# 			scoreboard players operation @s cable.network.low = #global_network cable.network.low
# 			scoreboard players operation @s cable.network.high = #global_network cable.network.high
# 			tag @s add cable.checked
# 			scoreboard players operation #predicate cable.direction = @s cable.direction
# 			execute at @s positioned ^ ^ ^1 align xyz if entity @e[limit=1,type=item_display,dx=0,tag=cable.network,tag=!cable.checked,predicate=cable:same_type,predicate=cable:opposite_direction] run function ./destroy/network
