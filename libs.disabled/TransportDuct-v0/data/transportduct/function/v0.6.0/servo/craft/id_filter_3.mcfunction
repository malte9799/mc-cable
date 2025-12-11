execute store result score #if_ctc transportduct.math if data storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc
execute store result score #if_smithed_id transportduct.math if data storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".smithed.id
execute if score #if_smithed_id transportduct.math matches 1 run function transportduct:v0.6.0/servo/craft/smithed_id
execute if score #if_smithed_id transportduct.math matches 0 if score #if_ctc transportduct.math matches 1 run function transportduct:v0.6.0/servo/craft/ctc
execute if score #if_smithed_id transportduct.math matches 0 if score #if_ctc transportduct.math matches 0 run function transportduct:v0.6.0/servo/craft/id
data remove storage transportduct:main temp.ItemsCraft[0]
execute if data storage transportduct:main temp.ItemsCraft[0] run function transportduct:v0.6.0/servo/craft/id_filter_3
