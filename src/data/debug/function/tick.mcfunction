schedule function debug:tick 1t replace

# execute if items entity @p weapon.* *[minecraft:custom_data~{ctc:{id:"cable:wrench"}}] run function debug:network
#V3
execute as @a at @s run kill @e[type=text_display,tag=debug,distance=5..]
tag @e[type=text_display,tag=debug,tag=killme] add killme2
tag @e[type=text_display,tag=debug] add killme
execute as @a if items entity @s armor.head leather_helmet[minecraft:custom_data~{id:"debug:network_id"}] at @s as @e[type=item_display,tag=cable.core,distance=..5] at @s run function ./tick2:
    execute if score @s itemio.network_id.low matches 1.. store result entity @s data.debug int 1 run scoreboard players get @s itemio.network_id.low
    execute if score @s cable.network.low matches 1.. store result entity @s data.debug int 1 run scoreboard players get @s cable.network.low
    function debug:test with entity @s data

kill @e[type=text_display,tag=debug,tag=killme2]
#V2
# execute as @a at @s as @e[tag=debug,distance=5.1..] run function ./tick3:
#     tag @s remove debug
#     data modify entity @s CustomNameVisible set value false 
    
# execute as @a if items entity @s armor.head leather_helmet[minecraft:custom_data~{id:"debug:network_id"}] at @s as @e[tag=cable.core,distance=..5] run function ./tick2:
#     tag @s add debug
#     execute if score @s itemio.network_id.low matches 1.. store result entity @s data.network int 1 run scoreboard players get @s itemio.network_id.low
#     execute if score @s cable.network.low matches 1.. store result entity @s data.network int 1 run scoreboard players get @s cable.network.low
#     data modify entity @s CustomName set string entity @s data.network
#     data modify entity @s CustomNameVisible set value true

#V1
# run tag @e[distance=..5] add debug.network
# execute as @e[tag=itemio.cable] store result entity @s data.network int 1 run scoreboard players get @s itemio.network_id.low


# execute as @e[tag=debug.network] run data modify entity @s CustomName set string entity @s data.network
# execute as @e[tag=debug.network] run data modify entity @s CustomNameVisible set value true
# execute as @e[tag=debug.network] run data modify entity @s item merge value {id:"minecraft:dirt"}
# # execute as @e[type=text_display,tag=debug] unless predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{vehicle:{}}} run kill @s