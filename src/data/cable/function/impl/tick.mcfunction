schedule function cable:impl/tick 1t replace

# function ./cable/collision/tick
# function ./cable/interaction/tick

execute as @e[type=item_display,tag=energy.cable] run function ./tick_2: 
    execute store result entity @s data.net_low int 1 run scoreboard players get @s energy.network_id
    data modify entity @s CustomName set string entity @s data.net_low


execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=energy.cable,distance=..5] run data modify entity @s CustomNameVisible set value 1b
execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=energy.cable,distance=5..] run data modify entity @s CustomNameVisible set value 0b


execute as @e[tag=cable.passenger,predicate=!cable:has_vehicle] run function cable:killme:
    tp @s ~ -1000 ~
    execute on passengers run kill @s
    kill @s

execute as @a if score @s cable.wrench matches 1.. run function cable:impl/event/clicked_wrench