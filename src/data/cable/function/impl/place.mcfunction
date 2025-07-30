# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#	   index: int
#	   components: {}

execute store result score #predicate cable.type run data get storage cable:data input.index
execute as @e[limit=1,type=item_display,dx=0,tag=cable,predicate=cable:same_type] run return run function cable:impl/destroy

execute unless block ~ ~ ~ #minecraft:replaceable run return fail
execute if predicate {'condition':'minecraft:location_check','predicate':{'block':{'state':{'waterlogged':'true'}}}} run setblock ~ ~ ~ water destroy
execute unless block ~ ~ ~ water run setblock ~ ~ ~ air destroy
execute store result score #count cable.math if entity @e[type=item_display,dx=0,tag=cable.core]
execute if score #count cable.math matches 8.. run return fail

scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

scoreboard players set #predicate cable.direction 1
execute rotated -90 0 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -1
execute rotated 90 0 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction 2
execute rotated 0 -90 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -2
execute rotated 0 90 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction 3
execute rotated 0 0 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -3
execute rotated 180 0 positioned ^ ^ ^1 as @e[type=item_display,limit=1,dx=0,predicate=cable:same_type] run function ./place/update

function ./place/update:
	execute if score #new cable.network.low matches 1.. run function ./network/regen
	execute if score #new cable.network.low matches 0 run function ./network/copy

	execute positioned ~.5 ~.5 ~.5 positioned ^ ^ ^-1 summon item_display run function ./place/cable
	scoreboard players operation #predicate cable.direction *= #-1 cable.math
	execute as @e[limit=1,type=item_display,dx=0,tag=cable.core,tag=!cable.cable,predicate=cable:same_type] facing ^ ^ ^-1 positioned ~.5 ~.5 ~.5 run return run function ./place/cable
	execute facing ^ ^ ^-1 positioned ~.5 ~.5 ~.5 summon item_display run function ./place/cable

	function ./place/cable:
		tp @s ~ ~ ~ ~ ~
		function ./network/set
		data merge entity @s {Tags:['cable','cable.network','cable.cable'],item_display:'fixed',item:{id:'coal'}}
		data modify entity @s item.components set from storage cable:data input.components
		data modify entity @s item.components."minecraft:custom_model_data".floats set value [1f]
		execute store result score @s cable.type run data get storage cable:data input.index
		scoreboard players operation @s cable.direction = #predicate cable.direction

		execute align xyz unless entity @e[limit=1,type=item_display,tag=cable.core,dx=0,predicate=cable:same_type] run tag @s add cable.core
		data modify entity @s[tag=!cable.core] item.components.'minecraft:custom_model_data'.flags set value [1b]

	
		execute align xyz as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:same_direction] run function ./update/enumerate
		execute if score #predicate cable.direction matches 1.. align xyz facing ^ ^ ^-1 as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:same_direction] run function ./update/offset
		execute if score #predicate cable.direction matches ..-1 align xyz as @e[type=item_display,dx=0,tag=cable.cable,predicate=cable:same_direction] run function ./update/offset
		

execute if score #new cable.network.low matches 0 positioned ~.5 ~.5 ~.5 summon item_display run function ./place/core:
	tp @s ~ ~ ~ ~ ~
	execute unless score @s cable.network.low matches 1.. run function ./network/new_id
	data merge entity @s {Tags:['cable','cable.network','cable.core'],item_display:'fixed',item:{id:'coal'}}
	data modify entity @s item.components set from storage cable:data input.components
	execute store result score @s cable.type run data get storage cable:data input.index
	scoreboard players set @s cable.direction 0

execute if entity @e[limit=1,type=item_display,dx=0,tag=cable.core,tag=!cable.cable] as @e[type=item_display,dx=0,tag=cable.core] run function ./update/enumerate
execute as @e[type=item_display,dx=0,tag=cable.core,tag=!cable.cable] run function ./update/offset