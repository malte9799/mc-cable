#> cable:v1.0.0/item/wrench/switch
#

execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{cable: {id: "cable:wrench"}}] run return run function cable:v1.0.0/item/wrench/switch/mainhand
execute if items entity @s weapon.offhand poisonous_potato[custom_data~{cable: {id: "cable:wrench"}}] run return run function cable:v1.0.0/item/wrench/switch/offhand
advancement revoke @s only cable:switched_wrench