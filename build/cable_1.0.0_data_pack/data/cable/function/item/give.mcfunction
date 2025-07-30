#> cable:item/give
#

summon item ~ ~ ~ {Tags: ["cable.item"], Item: {id: "firework_rocket"}}
execute as @e[limit=1, type=item, distance=..0.1, tag=cable.item] run function cable:item/give/init
