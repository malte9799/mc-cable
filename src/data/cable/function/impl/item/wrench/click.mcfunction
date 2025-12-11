execute at @s anchored eyes positioned ^ ^ ^ run function ./click/ray:
    # particle dolphin
    execute as @e[type=item_display,distance=...1,tag=cable.core] at @s run particle smoke

    execute if block ~ ~ ~ #cable:replaceable positioned ^ ^ ^.1 run function ./click/ray