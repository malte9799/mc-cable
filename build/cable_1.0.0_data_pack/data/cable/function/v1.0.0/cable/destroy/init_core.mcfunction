#> cable:v1.0.0/cable/destroy/init_core
#
# @context align xyz
# @input
#   storage cable:data input (entry of cable:data registry)
#       index: int
#       ?components: {}

data modify entity @s item.components."minecraft:custom_model_data".flags set value [0b]
tag @s add cable.core