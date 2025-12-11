execute as @e[tag=transportduct.animation] at @s run function transportduct:v0.6.0/animation/8tick
execute as @e[tag=transportduct.animation_servos] at @s run function transportduct:v0.6.0/animation_servos/8tick
schedule function transportduct:v0.6.0/8tick 20 replace
