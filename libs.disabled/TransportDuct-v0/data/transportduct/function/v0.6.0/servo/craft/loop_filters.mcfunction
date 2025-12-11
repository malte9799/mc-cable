item modify block ~ ~ ~ container.16 transportduct:set_filter_lore_middle
data remove storage transportduct:main temp.filters[0]
execute if data storage transportduct:main temp.filters[0] run function transportduct:v0.6.0/servo/craft/loop_filters
