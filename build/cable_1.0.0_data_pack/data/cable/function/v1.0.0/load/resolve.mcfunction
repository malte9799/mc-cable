schedule clear cable:v1.0.0/tick
execute if score #cable.major load.status matches 1 if score #cable.minor load.status matches 0 if score #cable.patch load.status matches 0 run function cable:v1.0.0/load
