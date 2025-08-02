#> cable:v1.0.0/load/enumerate/patch
#
execute if score #cable.patch load.status matches ..0 unless score #cable.patch load.status matches 0 run function cable:v1.0.0/load/enumerate/set_version