function ./redstone/can_connect:
    execute if data storage cable:data {input:{type:"redstone"}} if block ~ ~ ~ #cable:redstone_connectable run return 1