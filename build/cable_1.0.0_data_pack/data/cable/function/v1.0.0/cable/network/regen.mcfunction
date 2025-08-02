#> cable:v1.0.0/cable/network/regen
#

scoreboard players operation #predicate cable.network.low = @s cable.network.low
scoreboard players operation #predicate cable.network.high = @s cable.network.high
execute as @e[type=item_display, tag=cable.network, predicate=cable:same_network] run function cable:v1.0.0/cable/network/set