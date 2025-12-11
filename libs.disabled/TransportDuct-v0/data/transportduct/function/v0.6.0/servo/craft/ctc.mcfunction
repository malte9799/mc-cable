data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters prepend value {}
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc set value []
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc append value {}
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc[0].id set from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc.id
data modify storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters[0].ctc[0].from set from storage transportduct:main temp.ItemsCraft[0].components."minecraft:custom_data".ctc.from
