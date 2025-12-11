scoreboard players set @s transportduct.math 1430363
execute if score @s transportduct.math matches 1430364.. run scoreboard players set @s transportduct.math 0
execute if score @s transportduct.math matches ..1430299 run scoreboard players set @s transportduct.math 1430300
data modify entity @s item set value {id: "minecraft:structure_void", count: 1}
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run scoreboard players get @s transportduct.math
execute unless entity @e[tag=transportduct.animation.text, distance=..1] run summon text_display ~ ~0.5 ~ {Tags: ["transportduct.animation.text"]}
scoreboard players operation #temp transportduct.math = @s transportduct.math
scoreboard players remove #temp transportduct.math 1430300
data modify entity @e[tag=transportduct.animation.text, distance=..1, limit=1] text set value '{"score":{"name":"#temp","objective":"transportduct.math"}}'
