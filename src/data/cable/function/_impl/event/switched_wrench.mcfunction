execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{cable:{id:"cable:wrench"}}] run function ./event/switched_wrench/mainhand:
    tag @s add cable.replaced
    summon item_display ~ ~ ~ {UUID:[I;1,1,0,1]}
    item replace entity 1-0-1-0-1 contents from entity @s weapon.offhand
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
    item replace entity @s weapon.mainhand from entity 1-0-1-0-1 contents
    kill 1-0-1-0-1

execute if items entity @s[tag=!cable.replaced] weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cable:{id:"cable:wrench"}}] run function ./event/switched_wrench/offhand:
    summon item_display ~ ~ ~ {UUID:[I;1,1,0,1]}
    item replace entity 1-0-1-0-1 contents from entity @s weapon.mainhand
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand from entity 1-0-1-0-1 contents
    kill 1-0-1-0-1

tag @s remove cable.replaced
advancement revoke @s only cable:switched_wrench