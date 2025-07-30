#> cable:v1.0.0/load
#
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
