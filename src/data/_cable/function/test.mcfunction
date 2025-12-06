$tellraw @p {\
    "click_event":{\
        "action":"copy_to_clipboard",\
        "value":"\
\
        /give @s glow_item_frame[\
            custom_data={\
                cable:{\
                    id:cable,\
                    type:\"$(type)\"\
                }\
            },\
            item_model=\"cable:$(type)_cable\",\
            item_name=\"$(type) Cable\",\
            entity_data={\
                id:\"glow_item_frame\",\
                Invisible:true,\
                Invulnerable:true,\
                Silent:true,\
                Tags:[\"cable.block\"]\
            }\
        ]"\
\
    },\
    "text":"Give Command [Click]"\
}

$tellraw @p {\
    "click_event":{\
        "action":"copy_to_clipboard",\
        "value":"\
            {   \"type\": \"minecraft:crafting_shapeless\",\
                \"ingredients\": [],\
                \"result\": {\
                    \"id\": \"minecraft:glow_item_frame\",\
                    \"components\": {\
                        \"minecraft:custom_data\": \"{\
                            cable:{\
                                id:\\\"cable\\\",\
                                type:\\\"$(type)\\\"\
                            }\
                        }\",\
                        \"minecraft:item_model\": \"cable:$(type)_cable\",\
                        \"minecraft:item_name\": \"$(type) Cable\",\
                        \"minecraft:entity_data\": {\
                            \"id\": \"glow_item_frame\",\
                            \"Invisible\": 1,\
                            \"Invulnerable\": 1,\
                            \"Silent\": 1,\
                            \"Tags\": [\"cable.block\"]\
                        }\
                    }\
                }\
            }"\
    },\
    "text":"Recipe Result [Click]"\
}

$tellraw @p {"click_event":{"action":"copy_to_clipboard","value":"{\"pools\": [{\"rolls\": 1,\"entries\": [{\"type\": \"minecraft:item\",\"name\": \"minecraft:glow_item_frame\",\"functions\": [{\"function\": \"minecraft:set_components\",\"components\": {\"minecraft:custom_data\": \"{cable:{id:\\\"cable\\\",type:\\\"$(type)\\\"}}\",\"minecraft:item_model\": \"cable:$(type)_cable\",\"minecraft:item_name\": \"$(type) Cable\",\"minecraft:entity_data\": {\"id\": \"glow_item_frame\",\"Invisible\": 1,\"Invulnerable\": 1,\"Silent\": 1,\"Tags\": [\"cable.block\"]}}}]}]}] }"},"text":"Loot Table [Click]"}