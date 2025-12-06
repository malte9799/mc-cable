setblock 14 0 -9 stone_button[facing=west,powered=true]

schedule function cable:redstone2 1t replace:
    setblock 14 0 -9 air strict
    schedule function cable:redstone 3t replace

