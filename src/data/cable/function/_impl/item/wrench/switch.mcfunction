execute if items entity @s weapon.mainhand poisonous_potato[custom_data~{cable:{id:"cable:wrench"}}] run return run function ./mainhand
execute if items entity @s weapon.offhand poisonous_potato[custom_data~{cable:{id:"cable:wrench"}}] run return run function ./offhand
advancement revoke @s only cable:switched_wrench

function ./start:
    summon item_display ~ ~ ~ {UUID:[I;1,1,0,1]}

function ./mid:
    execute store result score #index cable.math run data get entity 1-0-1-0-1 item.components."minecraft:custom_data".cable.index
    scoreboard players add #index cable.math 1 
    execute store result score #count cable.math run data get storage cable:data registry
    execute if score #index cable.math >= #count cable.math run scoreboard players set #index cable.math 0
    execute store result entity 1-0-1-0-1 item.components."minecraft:custom_data".cable.index int 1 run scoreboard players get #index cable.math

function ./end:
    kill 1-0-1-0-1
    advancement revoke @s only cable:switched_wrench

function ./mainhand:
    function ./start
    item replace entity 1-0-1-0-1 contents from entity @s weapon.mainhand
    function ./mid
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand from entity 1-0-1-0-1 contents
    function ./end

function ./offhand:
    function ./start
    item replace entity 1-0-1-0-1 contents from entity @s weapon.offhand
    function ./mid
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
    item replace entity @s weapon.mainhand from entity 1-0-1-0-1 contents
    function ./end