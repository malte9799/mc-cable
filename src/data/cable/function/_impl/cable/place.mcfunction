# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       components: {}

particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 0 0 0 0 0 normal
# Store registry index for "cable:same_type" check
execute store result score #predicate cable.type run data get storage cable:data input.index
# Debug: Destroy cable if already placed and return
execute as @e[limit=1,dx=0,type=item_display,tag=cable,predicate=cable:same_type] run return run function ./destroy

# Check and destroy replaceable and waterlogged blocks
execute unless block ~ ~ ~ #minecraft:replaceable run return fail
execute if predicate {'condition':'minecraft:location_check','predicate':{'block':{'state':{'waterlogged':'true'}}}} run setblock ~ ~ ~ water destroy
execute unless block ~ ~ ~ water run setblock ~ ~ ~ air destroy
execute store result score #count cable.math if entity @e[dx=0,type=item_display,tag=cable.core]
execute if score #count cable.math matches 8.. run return fail

# Prepare for network ID assignment
scoreboard players set #new cable.network.low 0
scoreboard players set #new cable.network.high 0

# 
scoreboard players set #predicate cable.direction 1 # East
execute rotated -90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -1 # West
execute rotated 90 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction 2 # Down
execute rotated 0 -90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -2 # Up
execute rotated 0 90 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction 3 # South
execute rotated 0 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update
scoreboard players set #predicate cable.direction -3 # North
execute rotated 180 0 positioned ^ ^ ^1 as @e[limit=1,dx=0,type=item_display,tag=cable.node,predicate=cable:same_type] run function ./place/update

function ./place/update:
    execute if score #new cable.network.low matches 1.. run function ./network/regen
    execute if score #new cable.network.low matches 0 run function ./network/copy

    execute positioned ^ ^ ^-1 summon item_display run function ./place/cable
    scoreboard players operation #predicate cable.direction *= #-1 cable.math
    execute as @e[limit=1,dx=0,type=item_display,tag=cable.core,tag=!cable.cable,predicate=cable:same_type] facing ^ ^ ^-1 run return run function ./place/cable
    execute facing ^ ^ ^-1 summon item_display run function ./place/cable

    function ./place/cable:
        tp @s ~.5 ~.5 ~.5 ~ ~
        function ./network/set
        data merge entity @s {Tags:['cable','cable.node','cable.network','cable.cable'],item_display:'fixed',item:{id:'coal'}}
        data modify entity @s item.components set from storage cable:data input.components
        data modify entity @s item.components."minecraft:custom_model_data".floats set value [1f]
        scoreboard players operation @s cable.type = #predicate cable.type
        scoreboard players operation @s cable.direction = #predicate cable.direction
        execute unless entity @e[limit=1,type=item_display,tag=cable.core,dx=0,predicate=cable:same_type] run tag @s add cable.core
        data modify entity @s[tag=!cable.core] item.components.'minecraft:custom_model_data'.flags set value [1b]

execute if score #new cable.network.low matches 0 summon item_display run function ./place/core:
    tp @s ~.5 ~.5 ~.5 ~ ~
    execute unless score @s cable.network.low matches 1.. run function ./network/new_id
    data merge entity @s {Tags:['cable','cable.node','cable.network','cable.core'],item_display:'fixed',item:{id:'coal'}}
    data modify entity @s item.components set from storage cable:data input.components
    scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players set @s cable.direction 0

data remove storage cable:data input
function ./offset
