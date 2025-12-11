tag @s add transportduct.servo.me
execute if entity @a[tag=transportduct.looker, predicate=transportduct:is_looking_me, distance=..7] unless entity @e[tag=transportduct.selected] run tag @s add transportduct.selected
tag @s remove transportduct.servo.me
data modify entity @s ItemRotation set value 0b
