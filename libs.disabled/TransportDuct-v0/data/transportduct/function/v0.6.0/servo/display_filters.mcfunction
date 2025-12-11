data remove storage transportduct:main temp.filters
data modify storage transportduct:main temp.filters set from entity @e[tag=transportduct.selected, limit=1] Item.components."minecraft:custom_data".itemio.ioconfig.filters
tellraw @s {text: "Defined filters : \n[", color: "white"}
execute if data storage transportduct:main temp.filters[0] run function transportduct:v0.6.0/servo/display_filters_loop
tellraw @s {text: "]", color: "white"}
