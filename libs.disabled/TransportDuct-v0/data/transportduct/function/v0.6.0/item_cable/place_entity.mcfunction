data modify entity @s item set value {id: "minecraft:structure_void", count: 1, components: {"minecraft:custom_model_data": 1430300}}
data merge entity @s {brightness: {block: 15, sky: 15}, transformation: {scale: [1.01f, 1.01f, 1.01f]}}
tag @s add itemio.cable
tag @s add transportduct.item_cable
function #itemio:calls/cables/init
