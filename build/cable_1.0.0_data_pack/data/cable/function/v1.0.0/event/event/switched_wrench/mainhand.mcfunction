#> cable:v1.0.0/event/event/switched_wrench/mainhand
#

tag @s add cable.replaced
summon item_display ~ ~ ~ {UUID: [I; 1, 1, 0, 1]}
item replace entity 00000001-0000-0001-0000-000000000001 contents from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity 00000001-0000-0001-0000-000000000001 contents
kill 00000001-0000-0001-0000-000000000001