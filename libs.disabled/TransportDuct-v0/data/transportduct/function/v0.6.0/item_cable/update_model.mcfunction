scoreboard players set #model transportduct.math 1430300
scoreboard players operation #model transportduct.math += @s itemio.math
item modify entity @s container.0 {function: "minecraft:set_custom_model_data", value: {type: "minecraft:score", target: {type: "minecraft:fixed", name: "#model"}, score: "transportduct.math", scale: 1}}
