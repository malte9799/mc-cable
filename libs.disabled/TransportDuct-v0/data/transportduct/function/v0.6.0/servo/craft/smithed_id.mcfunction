data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].smithed.id set value []
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].smithed.id append from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".smithed.id
