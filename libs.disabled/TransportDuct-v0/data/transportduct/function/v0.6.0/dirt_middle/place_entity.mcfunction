data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig set value []
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 9, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 10, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 11, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 12, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 13, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 14, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 15, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 16, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
data modify entity @s item.components."minecraft:custom_data".itemio.ioconfig append value {Slot: 17, mode: "both", allowed_side: {bottom: 1b, top: 1b, north: 1b, south: 1b, east: 1b, west: 1b}, filters: [{id: ["minecraft:dirt"]}]}
tag @s add itemio.container
function #itemio:calls/container/init
