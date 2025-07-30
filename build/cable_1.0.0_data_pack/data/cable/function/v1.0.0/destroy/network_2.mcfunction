#> cable:v1.0.0/destroy/network_2
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       ?components: {}

execute if entity @s[tag=!cable.checked] run function cable:v1.0.0/network/new_id
execute if entity @s[tag=!cable.checked] as @e[dx=0, type=item_display, tag=cable.network, tag=!cable.checked, predicate=cable:same_type] run function cable:v1.0.0/destroy/network_3

execute if entity @s[tag=!cable.core] run return run kill @s
execute unless entity @e[limit=1, dx=0, type=item_display, tag=cable.cable, tag=!cable.core, predicate=cable:same_type] run return run function cable:v1.0.0/place/core
execute as @e[limit=1, dx=0, type=item_display, tag=cable.cable, tag=!cable.core, predicate=cable:same_type] run function cable:v1.0.0/destory/init_core

kill @s
