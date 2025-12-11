execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{ctc:{id:"cable:wrench"}}] run return run function ./switch/mainhand
execute if items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{ctc:{id:"cable:wrench"}}] run return run function ./switch/offhand
advancement revoke @s only cable:switched_wrench

function ./switch/start:
    summon item_display ~ ~ ~ {UUID:[I;1,1,0,1]}

function ./switch/mid:
    execute store result score #index cable.math run data get entity 1-0-1-0-1 item.components."minecraft:custom_data".cable.type_id
    scoreboard players add #index cable.math 1 
    execute store result score #count cable.math run data get storage cable:data registry
    execute if score #index cable.math >= #count cable.math run scoreboard players set #index cable.math 0
    execute store result entity 1-0-1-0-1 item.components."minecraft:custom_data".cable.type_id int 1 run scoreboard players get #index cable.math

function ./switch/end:
    kill 1-0-1-0-1
    advancement revoke @s only cable:switched_wrench

function ./switch/mainhand:
    function ./switch/start
    item replace entity 1-0-1-0-1 contents from entity @s weapon.mainhand
    function ./switch/mid
    item replace entity @s weapon.mainhand from entity @s weapon.offhand
    item replace entity @s weapon.offhand from entity 1-0-1-0-1 contents
    function ./switch/end

function ./switch/offhand:
    function ./switch/start
    item replace entity 1-0-1-0-1 contents from entity @s weapon.offhand
    function ./switch/mid
    item replace entity @s weapon.offhand from entity @s weapon.mainhand
    item replace entity @s weapon.mainhand from entity 1-0-1-0-1 contents
    function ./switch/end

