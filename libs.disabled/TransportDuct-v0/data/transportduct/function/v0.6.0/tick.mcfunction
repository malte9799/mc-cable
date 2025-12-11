execute as @e[tag=transportduct.item_cable, predicate=!transportduct:test_block] at @s run function transportduct:v0.6.0/item_cable/destroy
execute as @e[tag=transportduct.summoned, tag=transportduct.servo] at @s run function transportduct:v0.6.0/servo/place
execute as @e[type=item, nbt={Item: {components: {"minecraft:custom_data": {transportduct: {destroyer: 1b}}}}}] at @s run function transportduct:v0.6.0/servo/destroy
execute as @e[tag=transportduct.servo] unless data entity @s Item.count run kill @s
schedule function transportduct:v0.6.0/tick 1 replace
