## AS all NOT im_set

execute as @s[tag=!invisible_minecart,tag=!im_set] if entity @s run function im_3:set_normal

execute as @s[tag=invisible_minecart,tag=!im_set] if entity @s run function im_3:set_invisible
