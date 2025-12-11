scoreboard players set @s smithed.data 1
data remove storage transportduct:main temp.ItemsCraft
data modify storage transportduct:main temp.ItemsCraft set from storage smithed.crafter:input recipe
data remove storage transportduct:main temp.ItemsCraft[{components: {"minecraft:custom_data": {ctc: {id: "id_filter", from: "airdox_:transportduct"}}}}]
execute if data storage transportduct:main temp.ItemsCraft[0] run function transportduct:v0.6.0/servo/craft/id_filter_2
data modify block ~ ~ ~ Items append from storage transportduct:main temp.ResultCraft
data remove storage transportduct:main temp.filters
data modify storage transportduct:main temp.filters set from storage transportduct:main temp.ResultCraft.components."minecraft:custom_data".transportduct.filters
item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_start
execute if data storage transportduct:main temp.filters[0] run function transportduct:v0.6.0/servo/craft/loop_filters
item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_end
data modify storage smithed.crafter:input flags append value "transportduct:filter_not_consume"
