scoreboard players add @s transportduct.math 1
execute if score @s transportduct.math matches 1430121.. run scoreboard players set @s transportduct.math 1430117
execute if score @s transportduct.math matches ..1430116 run scoreboard players set @s transportduct.math 1430117
data modify entity @s item set value {id: "minecraft:furnace", count: 1}
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s transportduct.math
execute unless entity @e[tag=transportduct.animation_servos.text, distance=..1] run summon text_display ~ ~0.5 ~ {Tags: ["transportduct.animation_servos.text"]}
scoreboard players operation #temp transportduct.math = @s transportduct.math
execute if score @s transportduct.math matches 1430117..1430118 run scoreboard players remove #temp transportduct.math 1430117
execute if score @s transportduct.math matches 1430119..1430120 run scoreboard players remove #temp transportduct.math 1430119
data modify entity @e[tag=transportduct.animation_servos.text, distance=..1, limit=1] text set value '{"score":{"name":"#temp","objective":"transportduct.math"}}'
