function ./item/can_connect:
    execute if data storage cable:data input{type:"item"} if block ~ ~ ~ #itemio:container run return 1
    execute if data storage cable:data input{type:"item"} if entity @e[dx=0,type=#itemio:container,tag=itemio.container] run return 1

function ./item/on_place:
    say hey

function ./item/on_remove:
    say bye

function ./item/on_place_io:
    say wow

function ./item/on_remove_io:
    say lol