function ./base/summon:
    execute positioned as @s align xyz run tp @s ~.5 ~.5 ~.5 ~ ~
    data merge entity @s {Tags:['cable','cable.node','cable.network'],item_display:'fixed',item:{id:'coal'}}
    execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
    execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
    scoreboard players operation @s cable.direction = #predicate cable.direction
    function cable:impl/util/get_direction
    function cable:impl/util/set_direction