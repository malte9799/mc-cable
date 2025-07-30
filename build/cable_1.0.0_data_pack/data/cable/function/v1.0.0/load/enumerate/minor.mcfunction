execute if score #cable.minor load.status matches ..0 unless score #cable.minor load.status matches 0 run function cable:v1.0.0/load/enumerate/set_version
execute unless score #cable.set load.status matches 1 if score #cable.minor load.status matches ..0 if score #cable.minor load.status matches 0 run function cable:v1.0.0/load/enumerate/patch
