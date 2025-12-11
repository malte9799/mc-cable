function ./util/get_direction:
    if data entity @s {Rotation:[-90f,0f]} run scoreboard players set @s cable.cirection 1 # east
    if data entity @s {Rotation:[90f,0f]} run scoreboard players set @s cable.cirection -1 # west
    if data entity @s {Rotation:[0f,-90f]} run scoreboard players set @s cable.cirection 2 # up
    if data entity @s {Rotation:[0f,90f]} run scoreboard players set @s cable.cirection -2 # down
    if data entity @s {Rotation:[0f,0f]} run scoreboard players set @s cable.cirection 3 # south
    if data entity @s {Rotation:[180f,0f]} run scoreboard players set @s cable.cirection -3 # north

function ./util/set_direction:
    if score @s cable.direction matches 1 run data merge entity @s {Rotation:[-90f,0f]}
    if score @s cable.direction matches -1 run data merge entity @s {Rotation:[90f,0f]}
    if score @s cable.direction matches 2 run data merge entity @s {Rotation:[0f,-90f]}
    if score @s cable.direction matches -2 run data merge entity @s {Rotation:[0f,90f]}
    if score @s cable.direction matches 3 run data merge entity @s {Rotation:[0f,0f]}
    if score @s cable.direction matches -3 run data merge entity @s {Rotation:[180f,0f]}