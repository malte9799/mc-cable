execute at @s anchored eyes positioned ^ ^ ^ run function ./click/ray:
    # particle dolphin
    execute as @e[distance=...1,tag=cable.core,type=item_display] at @s run particle smoke

    execute if block ~ ~ ~ #cable:replaceable positioned ^ ^ ^.1 run function ./click/ray