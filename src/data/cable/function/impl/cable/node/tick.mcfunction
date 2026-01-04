function ./io/connector/tick

clear @a coal[minecraft:custom_data~{cable:{gui:true}}]
execute as @a if items entity @s player.cursor coal[minecraft:custom_data~{cable:{gui:true}}] run item replace entity @s player.cursor with air