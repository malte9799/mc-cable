## AS Normal Minecart NOT im_set

execute if entity @s[type=minecraft:minecart] run data merge entity @s {CustomDisplayTile:true,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"down"}},DisplayOffset:4}
execute if entity @s[type=minecraft:chest_minecart] run data merge entity @s {CustomDisplayTile:true,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"up"}},DisplayOffset:4}
execute if entity @s[type=minecraft:furnace_minecart] run data merge entity @s {CustomDisplayTile:true,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"north"}},DisplayOffset:4}
execute if entity @s[type=minecraft:hopper_minecart] run data merge entity @s {CustomDisplayTile:true,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"west"}},DisplayOffset:4}
execute if entity @s[type=minecraft:tnt_minecart] run data merge entity @s {CustomDisplayTile:true,DisplayState:{Name:"minecraft:command_block",Properties:{conditional:"true",facing:"south"}},DisplayOffset:4}

tag @s add im_set
