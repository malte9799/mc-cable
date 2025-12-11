data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig set value []
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 0b, mode: "input", allowed_side: {bottom: 1b}, filters: [{id: ["minecraft:dirt"]}]}
tag @s add itemio.container
function #itemio:calls/container/init
