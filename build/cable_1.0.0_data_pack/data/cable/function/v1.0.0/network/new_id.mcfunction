#> cable:v1.0.0/network/new_id
#

scoreboard players add #global_network cable.network.low 1
execute if score #global_network cable.network.low matches 2147483647 run scoreboard players add #global_network cable.network.high 1
execute if score #global_network cable.network.low matches 2147483647 run scoreboard players set #global_network cable.network.low 1
scoreboard players operation @s cable.network.low = #global_network cable.network.low
scoreboard players operation @s cable.network.high = #global_network cable.network.high
