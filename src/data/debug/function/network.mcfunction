def box_particle(size=[1,1,1], color=[1.0,1.0,1.0], scale=1,count=10):
    x = size[0] / 2
    y = size[1] / 2
    z = size[2] / 2

    sx = size[0] / 4
    sy = size[1] / 4
    sz = size[2] / 4
    particle dust{color: color, scale: scale} ~x ~ ~ sx 0 0 0 count force
    particle dust{color: color, scale: scale} ~x ~ ~size[2] sx 0 0 0 count force
    particle dust{color: color, scale: scale} ~ ~ ~z 0 0 sz 0 count force
    particle dust{color: color, scale: scale} ~size[0] ~ ~z 0 0 sz 0 count force

    particle dust{color: color, scale: scale} ~ ~y ~ 0 sy 0 0 count force
    particle dust{color: color, scale: scale} ~size[0] ~y ~ 0 sy 0 0 count force
    particle dust{color: color, scale: scale} ~ ~y ~size[2] 0 sy 0 0 count force
    particle dust{color: color, scale: scale} ~size[0] ~y ~size[2] 0 sy 0 0 count force
    

    particle dust{color: color, scale: scale} ~x ~size[1] ~ sx 0 0 0 count force
    particle dust{color: color, scale: scale} ~x ~size[1] ~size[2] sx 0 0 0 count force
    particle dust{color: color, scale: scale} ~ ~size[1] ~z 0 0 sz 0 count force
    particle dust{color: color, scale: scale} ~size[0] ~size[1] ~z 0 0 sz 0 count force


execute as @e[type=item_display,tag=cable.node,tag=cable.core] at @s positioned ~-.1 ~-.1 ~-.1 run function ./particle/core
execute as @e[type=item_display,tag=cable.node,tag=cable.core,tag=cable.wire] at @s positioned ~-.075 ~-.075 ~-.075 positioned ^ ^ ^.3 run function ./particle/core_wire
execute as @e[type=item_display,tag=cable.node,tag=!cable.core,tag=cable.wire] at @s positioned ~-.075 ~-.075 ~-.075 positioned ^ ^ ^.3 run function ./particle/wire


function ./particle/core:
    box_particle([0.2,0.2,0.2],[1.000,0.200,0.200],0.1,20)
function ./particle/core_wire:
    box_particle([0.15,0.15,0.15],[1.000,0.200,0.200],0.1,20)
function ./particle/wire:
    box_particle([0.15,0.15,0.15],[0.200,0.200,1.000],0.1,20)


