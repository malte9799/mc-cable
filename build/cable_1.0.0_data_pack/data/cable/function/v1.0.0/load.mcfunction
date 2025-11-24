#> cable:v1.0.0/load
#
#2147483647
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536
scoreboard objectives add cable.math dummy
scoreboard players set #-1 cable.math -1
scoreboard players set #2 cable.math 2
scoreboard players set #10 cable.math 10

scoreboard objectives add cable.network.low dummy
scoreboard objectives add cable.network.high dummy
scoreboard objectives add cable.type dummy
scoreboard objectives add cable.direction dummy

schedule function cable:v1.0.0/tick 1 replace

data modify storage cable:data input set value {type: "redstone", components: {item_name: "Redstone Cable", item_model: "cable:redstone_cable"}, input: {type: "predicate", predicate: {}}, output: {type: "function", function: "cable:v1.0.0/redstone/input"}}

function cable:register

data modify storage cable:data input set value {type: "debug", components: {item_name: "Debug Cable", item_model: "cable:debug_cable"}, input: {type: "predicate", predicate: {}}, output: {type: "function", function: "cable:v1.0.0/redstone/input"}}

function cable:register