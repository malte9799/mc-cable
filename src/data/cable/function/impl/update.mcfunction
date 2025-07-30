#> cable:impl/update
#
# @context align xyz

function ./update/enumerate:
	execute unless data storage cable:data temp[8] run data modify storage cable:data temp set value [{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1}]
	execute run function ./update/enumerate_2 with entity @s item.components."minecraft:custom_data":
		$execute store result storage cable:data temp[$(type)].i int 1 run scoreboard players get @s cable.type 

function ./update/offset:
	execute if data storage cable:data temp[{i:-1}] run data remove storage cable:data temp[{i:-1}]
	execute store result score #count cable.type run data get storage cable:data temp
	scoreboard players operation #dir cable.math = @s cable.direction
	scoreboard players operation #dir cable.math %= #2 cable.math

	execute if score #dir cable.math matches 0 facing ^ ^ ^-1 run function ./update/offset_2
	execute if score #dir cable.math matches 1 run function ./update/offset_2:
		execute if score #count cable.type matches 1 align xyz positioned ~.5 ~.5 ~.5 run tp @s ^ ^ ^
		execute if score #count cable.type matches 2 align xyz positioned ~.5 ~.5 ~.5 run function ./update/offset/2:
			execute store result score #index cable.type run data get storage cable:data temp[0].i
			execute if score @s cable.type = #index cable.type run tp @s ^ ^.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[1].i
			execute if score @s cable.type = #index cable.type run tp @s ^ ^-.2 ^

		execute if score #count cable.type matches 3 align xyz positioned ~.5 ~.5 ~.5 run function ./update/offset/3:
			execute store result score #index cable.type run data get storage cable:data temp[0].i
			execute if score @s cable.type = #index cable.type run tp @s ^-.2 ^.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[1].i
			execute if score @s cable.type = #index cable.type run tp @s ^ ^ ^
			execute store result score #index cable.type run data get storage cable:data temp[2].i
			execute if score @s cable.type = #index cable.type run tp @s ^.2 ^-.2 ^

		execute if score #count cable.type matches 4.. align xyz positioned ~.5 ~.5 ~.5 run function ./update/offset/4:
			execute store result score #index cable.type run data get storage cable:data temp[0].i
			execute if score @s cable.type = #index cable.type run tp @s ^ ^.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[1].i
			execute if score @s cable.type = #index cable.type run tp @s ^.2 ^ ^
			execute store result score #index cable.type run data get storage cable:data temp[2].i
			execute if score @s cable.type = #index cable.type run tp @s ^ ^-.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[3].i
			execute if score @s cable.type = #index cable.type run tp @s ^-.2 ^ ^
			execute store result score #index cable.type run data get storage cable:data temp[4].i
			execute if data storage cable:data temp[4] if score @s cable.type = #index cable.type run tp @s ^.2 ^.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[5].i
			execute if data storage cable:data temp[5] if score @s cable.type = #index cable.type run tp @s ^.2 ^-.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[6].i
			execute if data storage cable:data temp[6] if score @s cable.type = #index cable.type run tp @s ^-.2 ^-.2 ^
			execute store result score #index cable.type run data get storage cable:data temp[7].i
			execute if data storage cable:data temp[7] if score @s cable.type = #index cable.type run tp @s ^-.2 ^.2 ^