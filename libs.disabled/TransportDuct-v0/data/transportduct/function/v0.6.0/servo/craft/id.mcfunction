data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].id set value []
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].id append from storage transportduct:main temp.ItemsCraft[0].id
