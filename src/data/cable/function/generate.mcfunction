from pathlib import Path
import re
import json
def to_camel_case(snake_str):
    result = ""
    for word in snake_str.lower().split("_"):
        result += " " + word.capitalize()
    return result.strip()



# Templates
ITEM_MODEL = {model:{type:"minecraft:composite",models:[{type:"minecraft:condition",property:"minecraft:custom_model_data",on_true:{type:"minecraft:empty"},on_false:{type:"minecraft:model",model:"cable:block/{{type}}/core",tints:[{type:"minecraft:custom_model_data",default:16777215}]}},{type:"minecraft:range_dispatch",property:"minecraft:custom_model_data",entries:[{threshold:1,model:{type:"minecraft:model",model:"cable:block/{{type}}/cable",tints:[{type:"minecraft:custom_model_data",default:16777215}]}}],fallback:{type:"minecraft:empty"}},{type:"minecraft:range_dispatch",property:"minecraft:custom_model_data",entries:[{threshold:2,model:{type:"minecraft:composite",models:[{type:"minecraft:model",model:"cable:base/connection"},{type:"minecraft:condition",property:"minecraft:custom_model_data",index:3,on_true:{type:"minecraft:model",model:"cable:base/io/redstone",tints:[{type:"minecraft:custom_model_data",index:3,default:16777215}]},on_false:{type:"minecraft:empty"}}]}}],fallback:{type:"minecraft:empty"}},{type:"minecraft:range_dispatch",property:"minecraft:custom_model_data",entries:[{threshold:3,model:{type:"minecraft:model",model:"cable:base/io/in",tints:[{type:"minecraft:custom_model_data",index:1,default:16777215}]}},{threshold:4,model:{type:"minecraft:model",model:"cable:base/io/out",tints:[{type:"minecraft:custom_model_data",index:2,default:16777215}]}},{threshold:5,model:{type:"minecraft:model",model:"cable:base/io/in_out",tints:[{type:"minecraft:custom_model_data",index:1,default:16777215},{type:"minecraft:custom_model_data",index:2,default:16777215}]}}],fallback:{type:"minecraft:empty"}},{type:"minecraft:condition",property:"minecraft:custom_model_data",index:1,on_true:{type:"minecraft:model",model:"cable:base/outline/core"},on_false:{type:"minecraft:empty"}},{type:"minecraft:condition",property:"minecraft:custom_model_data",index:2,on_true:{type:"minecraft:model",model:"cable:base/outline/cable"},on_false:{type:"minecraft:empty"}}]}}
LOOT_TABLE = {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"glow_item_frame",functions:[{function:"minecraft:set_components",components:{"minecraft:item_name":"{{name}} Cable","minecraft:item_model":"cable:{{type}}_cable","minecraft:custom_data":{cable:{id:"cable",type:"{{type}}"}},"minecraft:entity_data":{id:"minecraft:glow_item_frame",Invulnerable:1,Silent:1,Tags:["cable.block"],Item:{id:"coal",components:{"minecraft:item_model":"cable:{{type}}_cable"}},ItemDropChance:0,Invisible:1,Fixed:1}}}]}]}]}


# Cable Types
types = ['redstone', 'active_redstone', 'item', 'energy', 'enhanced_energy', 'ender_energy', 'fluid', 'pressurized_fluid', 'ender_fluid']

for type in types:
    #> ASSETS
    # Item Definition
    item_model f"cable:{type}_cable" json.dumps(ITEM_MODEL).replace('{{type}}', type)

    # Core Model
    model f"cable:block/{type}/core" {
        "parent": "cable:base/core",
        "textures": {
            "texture": f"cable:block/{type}_core"
        }
    }
    # Cable Model
    model f"cable:block/{type}/cable" {
        "parent": "cable:base/cable",
        "textures": {
            "texture": f"cable:block/{type}_cable"
        }
    }

    if type == 'active_redstone':
        continue

    #> DATA
    # Loot Table
    loot_table f"cable:{type}_cable" json.dumps(LOOT_TABLE).replace('{{type}}', type).replace('{{name}}', to_camel_case(type))