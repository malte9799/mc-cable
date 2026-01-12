function ./energy/can_connect:
    execute if data storage cable:data {input:{type:"energy"}} if entity @e[dx=0,tag=energy.send,limit=1,type=item_display] run return 1
    execute if data storage cable:data {input:{type:"enhanced_energy"}} if block ~ ~ ~ #cable:container run return 1
    execute if data storage cable:data {input:{type:"ender_energy"}} if block ~ ~ ~ #cable:container run return 1