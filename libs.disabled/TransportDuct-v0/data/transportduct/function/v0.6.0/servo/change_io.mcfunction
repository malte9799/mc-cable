execute store success score #input transportduct.math if entity @s[tag=itemio.servo.insert]
execute if score #input transportduct.math matches 1 run tag @s remove itemio.servo.insert
execute if score #input transportduct.math matches 1 run tag @s add itemio.servo.extract
execute if score #input transportduct.math matches 0 run tag @s remove itemio.servo.extract
execute if score #input transportduct.math matches 0 run tag @s add itemio.servo.insert
function transportduct:v0.6.0/servo/update
