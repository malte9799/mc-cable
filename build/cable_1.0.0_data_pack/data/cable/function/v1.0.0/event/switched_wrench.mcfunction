#> cable:v1.0.0/event/switched_wrench
#
execute if items entity @s weapon.mainhand minecraft:poisonous_potato[minecraft:custom_data~{cable: {id: "cable:wrench"}}] run function cable:v1.0.0/event/event/switched_wrench/mainhand

execute if items entity @s[tag=!cable.replaced] weapon.offhand minecraft:poisonous_potato[minecraft:custom_data~{cable: {id: "cable:wrench"}}] run function cable:v1.0.0/event/event/switched_wrench/offhand

tag @s remove cable.replaced
advancement revoke @s only cable:switched_wrench