function debug:load
#2147483647
gamerule maxCommandChainLength 65536
gamerule maxCommandForkCount 65536
scoreboard objectives add cable.math dummy
scoreboard players set #-1 cable.math -1
scoreboard players set #2 cable.math 2
scoreboard players set #10 cable.math 10
scoreboard players set #process_queue cable.math 20

scoreboard objectives add cable.network.low dummy
scoreboard objectives add cable.network.high dummy
scoreboard objectives add cable.network.process_queue dummy
scoreboard objectives add cable.type dummy
scoreboard objectives add cable.direction dummy
scoreboard objectives add cable.wrench minecraft.used:minecraft.warped_fungus_on_a_stick

schedule function cable:impl/tick 1t replace

function cable:register { type:"redstone", components:{ item_name:'Redstone Cable', item_model:"cable:redstone_cable" }}
function cable:register { type:"item", components:{ item_name:'Item Cable', item_model:"cable:item_cable" }}

function cable:register { type:"energy", components:{ item_name:'Energy Cable', item_model:"cable:energy_cable" }}
function cable:register { type:"enhanced_energy", components:{ item_name:'Enhanced Energy Cable', item_model:"cable:enhanced_energy_cable" }}
function cable:register { type:"ender_energy", components:{ item_name:'Ender Energy Cable', item_model:"cable:ender_energy_cable" }}

function cable:register { type:"fluid", components:{ item_name:'Fluid Cable', item_model:"cable:fluid_cable" }}
function cable:register { type:"pressurized_fluid", components:{ item_name:'Pressurized Fluid Cable', item_model:"cable:pressurized_fluid_cable" }}
function cable:register { type:"ender_fluid", components:{ item_name:'Ender Fluid Cable', item_model:"cable:ender_fluid_cable" }}
