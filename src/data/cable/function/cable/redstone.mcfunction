function ./redstone/can_connect:
    execute if data storage cable:data input{type:"redstone"} if block ~ ~ ~ #cable:redstone_connectable run return 1
    # execute if data storage cable:data input{type:"item"} if entity @e[dx=0,type=#itemio:container,tag=itemio.container] run return 1
