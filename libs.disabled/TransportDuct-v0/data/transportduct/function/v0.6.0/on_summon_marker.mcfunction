data modify entity @s data.itemio.ioconfig set value []
data modify entity @s data.itemio.ioconfig append value {Slot: 0b, mode: "input", allowed_side: {bottom: 1b, north: 1b, east: 1b, south: 1b, west: 1b, top: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s data.itemio.ioconfig append value {Slot: 1b, mode: "input", allowed_side: {bottom: 1b, north: 1b, east: 1b, south: 1b, west: 1b, top: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s data.itemio.ioconfig append value {Slot: 2b, mode: "input", allowed_side: {bottom: 1b, north: 1b, east: 1b, south: 1b, west: 1b, top: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s data.itemio.nbt_items_path set value "entity @s Items"
function #itemio:calls/container/init
