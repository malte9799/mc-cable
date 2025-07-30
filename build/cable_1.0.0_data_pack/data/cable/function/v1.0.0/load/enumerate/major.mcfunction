execute if score #cable.major load.status matches ..1 unless score #cable.major load.status matches 1 run function cable:v1.0.0/load/enumerate/set_version
execute unless score #cable.set load.status matches 1 if score #cable.major load.status matches ..1 if score #cable.major load.status matches 1 run function cable:v1.0.0/load/enumerate/minor
