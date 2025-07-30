#> cable:v1.0.0/load
#
# say loaded
gamerule maxCommandChainLength 2147483647
gamerule maxCommandForkCount 2147483647
scoreboard objectives add cable.math dummy
scoreboard players set #2 cable.math 2
scoreboard players set #-1 cable.math -1

scoreboard objectives add cable.network.low dummy
scoreboard objectives add cable.network.high dummy
scoreboard objectives add cable.type dummy
scoreboard objectives add cable.direction dummy

function example:register

# /give @s glow_item_frame[custom_data={cable:1b},entity_data={id:glow_item_frame,Tags:[cable.block],Item:{id:dirt,components:{custom_data:{cable:1b,id:debug_0}}}}]
# /give @p firework_rocket[custom_data={cable:1b,id:debug_0}]
