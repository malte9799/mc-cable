function ./wrench/give:

    data modify storage cable:data temp set from storage cable:registry cables
    raw summon item ~ ~ ~ {Tags:[cable.item],Item:{id:"minecraft:white_bundle",components:{custom_data:{cable:{id:"wrench"}},item_name:[{"text":"\uc003\uf050","font":"cable:icons"},{"text":"Wrench","font":"minecraft:default"}],item_model:"cable:wrench",bundle_contents:[]}}}
    execute as @n[dx=0,tag=cable.item,type=item] run function ./wrench/give_2:
        data modify storage cable:data temp[0] merge value {id:"minecraft:stone",components:{max_stack_size:1,custom_data:{wrench_select_type:1}}}
        data modify entity @s Item.components."minecraft:bundle_contents" append from storage cable:data temp[0]
        data remove storage cable:data temp[0]
        execute if data storage cable:data temp[0] run function ./wrench/give_2


#> TODO
# if left click of wrench (take item out)
# -> but pack in last slot.
# & change wrench name and custom_data
# maybe remove 'F'


function ./wrench/right_click:
    advancement revoke @s only cable:wrench/right_click
    # say right_click
    execute anchored eyes positioned ^ ^ ^ as @e[distance=...1,type=item] if items entity @s contents stone[minecraft:custom_data~{wrench_select_type:1b}] at @s run function ./wrench/right_click_2:
        say @s
        say test

function ./wrench/select_type:
    advancement revoke @s only cable:wrench/select_type
    say select_type