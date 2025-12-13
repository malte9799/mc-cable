schedule function cable:impl/tick 1t replace

# function ./cable/collision/tick
# function ./cable/interaction/tick

execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=energy.cable,distance=..5] run data modify entity @s CustomNameVisible set value 1b
execute as @a[predicate=cable:debug_goggles] at @s as @e[type=item_display,tag=energy.cable,distance=5..] run data modify entity @s CustomNameVisible set value 0b

execute as @a if score @s cable.wrench matches 1.. run function cable:impl/event/clicked_wrench