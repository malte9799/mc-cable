import json
import os
import colorsys

TEMPLATE = {
  "pools": [
	{
	  "rolls": 1,
	  "entries": [
		{
		  "type": "item",
		  "name": "glow_item_frame",
		  "functions": [
			{
			  "function": "set_components",
			  "components": {
				  
				"item_model": "example:tint1",
				"custom_model_data": {
				  "colors": ["{{color}}"]
				},
				"item_name": "\"{{type}}\"",
				"lore": [],
				"custom_data": {
				  "cable": True,
				  "id": "{{type}}"
				},
				"entity_data": {
				  "id": "glow_item_frame",
				  "Invulnerable": True,
				  "Invisible": True,
				  "Silent": True,
				  "Tags": ["cable.block"],
				  "Item": {
					"id": "dirt",
					"components": {
					  "item_model":"air",
					  "custom_data": {
						"cable": True,
						"id": "{{type}}"
					  }
					}
				  }
				}
			  }
			},
			{
			  "function": "set_lore",
			  "mode": "append",
			  "lore": [
				{
				  "text": "example:{{type}}",
				  "color": "dark_gray",
				  "italic": False
				}
			  ]
			},
			{
			  "function": "reference",
			  "name": "cable:lore_footer"
			}
		  ]
		}
	  ]
	}
  ]
}


OUTPUT_DIR = os.path.dirname(__file__)

def rainbow_color(index, total):
	# Evenly distribute hue around the color wheel
	hue = index / total
	r, g, b = colorsys.hsv_to_rgb(hue, 1, 1)
	# Convert to 24-bit integer
	return (int(r * 255) << 16) | (int(g * 255) << 8) | int(b * 255)

for i in range(9):
	type_str = "debug_"+str(i)
	color_val = rainbow_color(i, 9)
	json_str = json.dumps(TEMPLATE)
	json_str = json_str.replace("{{type}}", type_str)
	json_str = json_str.replace("\"{{color}}\"", str(color_val))
	data = json.loads(json_str)
	filename = os.path.join(OUTPUT_DIR, f"{type_str}.json")
	with open(filename, "w", encoding="utf-8") as f:
		json.dump(data, f, indent=2)