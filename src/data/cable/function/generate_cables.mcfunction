from pathlib import Path
import re
def to_camel_case(snake_str):
    result = ""
    for word in snake_str.lower().split("_"):
        result += " " + word.capitalize()
    return result.strip()


# Templates
TEMPLATE_item_definition = Path('src/assets/cable/items/cable_TEMPLATE.json').read_text()
TEMPLATE_loot_table = Path('src/data/cable/loot_table/cable_TEMPLATE.json').read_text()

# Cable Types
types = ['redstone', 'active_redstone', 'item', 'energy', 'enhanced_energy', 'ender_energy', 'fluid', 'pressurized_fluid', 'ender_fluid']

for type in types:
    #> ASSETS
    # Item Definition
    item_model f"cable:{type}_cable" TEMPLATE_item_definition.replace('{{type}}', type)

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
    loot_table f"cable:{type}_cable" TEMPLATE_loot_table.replace('{{type}}', type).replace('{{name}}', to_camel_case(type))