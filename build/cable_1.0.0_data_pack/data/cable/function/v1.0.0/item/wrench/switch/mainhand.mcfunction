#> cable:v1.0.0/item/wrench/switch/mainhand
#

function cable:v1.0.0/item/wrench/switch/start
item replace entity 00000001-0000-0001-0000-000000000001 contents from entity @s weapon.mainhand
function cable:v1.0.0/item/wrench/switch/mid
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from entity 00000001-0000-0001-0000-000000000001 contents
function cable:v1.0.0/item/wrench/switch/end