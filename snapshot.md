# Lectern snapshot

## Data pack

- `@data_pack pack.mcmeta`

  <details>

  ```json
  {
    "pack": {
      "min_format": [
        88,
        0
      ],
      "max_format": [
        88,
        0
      ],
      "description": ""
    },
    "overlays": {
      "entries": [
        {
          "directory": "1.21.5",
          "min_format": 55,
          "max_format": 55,
          "formats": [
            55,
            55
          ]
        }
      ]
    }
  }
  ```

  </details>

### cable

- `@advancement cable:looking_at_connector`

  <details>

  ```json
  {
    "criteria": {
      "_": {
        "trigger": "minecraft:tick",
        "conditions": {
          "player": [
            {
              "condition": "minecraft:entity_properties",
              "entity": "this",
              "predicate": {
                "type_specific": {
                  "type": "minecraft:player",
                  "looking_at": {
                    "type": "minecraft:item_frame"
                  }
                }
              }
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.major"
                },
                "score": "load.status"
              },
              "range": 0
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.minor"
                },
                "score": "load.status"
              },
              "range": 1
            }
          ]
        }
      }
    },
    "rewards": {
      "function": "cable:v0.1/event/looking_at_connector"
    }
  }
  ```

  </details>

- `@advancement cable:placed_cable`

  <details>

  ```json
  {
    "criteria": {
      "_": {
        "trigger": "minecraft:item_used_on_block",
        "conditions": {
          "location": [
            {
              "condition": "minecraft:match_tool",
              "predicate": {
                "items": "minecraft:glow_item_frame",
                "predicates": {
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable"
                    }
                  }
                }
              }
            }
          ],
          "player": [
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.major"
                },
                "score": "load.status"
              },
              "range": 0
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.minor"
                },
                "score": "load.status"
              },
              "range": 1
            }
          ]
        }
      }
    },
    "rewards": {
      "function": "cable:v0.1/event/placed_cable"
    }
  }
  ```

  </details>

- `@advancement cable:switched_wrench`

  <details>

  ```json
  {
    "criteria": {
      "_": {
        "trigger": "minecraft:inventory_changed",
        "conditions": {
          "player": [
            {
              "condition": "minecraft:entity_properties",
              "entity": "this",
              "predicate": {
                "flags": {
                  "is_sneaking": true
                }
              }
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.major"
                },
                "score": "load.status"
              },
              "range": 0
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.minor"
                },
                "score": "load.status"
              },
              "range": 1
            }
          ],
          "items": [
            {
              "items": "warped_fungus_on_a_stick",
              "predicates": {
                "minecraft:custom_data": {
                  "cable": {
                    "id": "wrench"
                  }
                }
              }
            }
          ]
        }
      }
    },
    "rewards": {
      "function": "cable:v0.1/event/switched_wrench"
    }
  }
  ```

  </details>

- `@advancement cable:wrench/right_click`

  <details>

  ```json
  {
    "criteria": {
      "_": {
        "trigger": "minecraft:using_item",
        "conditions": {
          "item": {
            "items": "minecraft:white_bundle",
            "predicates": {
              "minecraft:custom_data": {
                "cable": {
                  "id": "wrench"
                }
              }
            }
          },
          "player": [
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.major"
                },
                "score": "load.status"
              },
              "range": 0
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.minor"
                },
                "score": "load.status"
              },
              "range": 1
            }
          ]
        }
      }
    },
    "rewards": {
      "function": "cable:v0.1/item/wrench/right_click"
    }
  }
  ```

  </details>

- `@advancement cable:wrench/select_type`

  <details>

  ```json
  {
    "criteria": {
      "_": {
        "trigger": "minecraft:inventory_changed",
        "conditions": {
          "player": [
            {
              "condition": "minecraft:entity_properties",
              "entity": "this",
              "predicate": {
                "slots": {
                  "player.cursor": {
                    "predicates": {
                      "minecraft:custom_data": {
                        "wrench_select_type": true
                      }
                    }
                  }
                }
              }
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.major"
                },
                "score": "load.status"
              },
              "range": 0
            },
            {
              "condition": "minecraft:value_check",
              "value": {
                "type": "minecraft:score",
                "target": {
                  "type": "minecraft:fixed",
                  "name": "#cable.minor"
                },
                "score": "load.status"
              },
              "range": 1
            }
          ],
          "items": [
            {
              "items": "white_bundle",
              "predicates": {
                "minecraft:custom_data": {
                  "cable": {
                    "id": "wrench"
                  }
                }
              }
            }
          ]
        }
      }
    },
    "rewards": {
      "function": "cable:v0.1/item/wrench/select_type"
    }
  }
  ```

  </details>

- `@function cable:generate`

  <details>

  ```mcfunction
  #> cable:generate
  ```

  </details>

- `@function cable:v0.1/cable/_collision`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/_collision

  ```

  </details>

- `@function cable:v0.1/cable/_interaction`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/_interaction

  ```

  </details>

- `@function cable:v0.1/cable/_network`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/_network

  ```

  </details>

- `@function cable:v0.1/cable/_node`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/_node

  ```

  </details>

- `@function cable:v0.1/cable/_process`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/_process

  ```

  </details>

- `@function cable:v0.1/cable/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/destroy
  # @public
  # @conext as @e[tag=cable.node] at @s
  playsound block.stone.break block @a ~ ~ ~
  scoreboard players operation #predicate cable.type = @s cable.type
  execute align xyz run tag @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] add cable.checked
  execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] at @s positioned ^ ^ ^1 align xyz run tag @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] add cable.checked
  function cable:v0.1/cable/offset
  tag @e[type=item_display,tag=cable.checked] remove cable.checked
  execute unless entity @s[tag=cable.node] align xyz as @e[dx=0,type=item_display,tag=cable.wire] at @s run function cable:v0.1/cable/destroy_2
  execute if entity @s[tag=cable.node] align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] at @s run function cable:v0.1/cable/destroy_2
  tag @e[type=item_display,tag=cable.checked] remove cable.checked
  execute align xyz as @e[dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function cable:v0.1/cable/node/core/destroy
  execute if block ~ ~ ~ moving_piston run setblock ~ ~ ~ air
  ```

  </details>

- `@function cable:v0.1/cable/node/core`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/core

  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector

  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui

  ```

  </details>

- `@function cable:v0.1/cable/node/io`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io

  ```

  </details>

- `@function cable:v0.1/cable/node/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/summon
  execute positioned as @s align xyz run tp @s ~0.5 ~0.5 ~0.5 ~ ~
  data merge entity @s {Tags:["cable","cable.node","cable.network"],item_display:"fixed",item:{id:"coal"}}
  execute unless data entity @s item.components run data modify entity @s item.components set from storage cable:data input.components
  execute unless score @s cable.type matches 0.. run scoreboard players operation @s cable.type = #predicate cable.type
  scoreboard players operation @s cable.direction = #predicate cable.direction
  function cable:v0.1/util/get_direction
  function cable:v0.1/util/set_direction
  ```

  </details>

- `@function cable:v0.1/cable/node/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/tick
  function cable:v0.1/cable/node/io/connector/tick
  clear @a coal[minecraft:custom_data~{cable:{gui:1b}}]
  execute as @a if items entity @s player.cursor coal[minecraft:custom_data~{cable:{gui:1b}}] run item replace entity @s player.cursor with air
  ```

  </details>

- `@function cable:v0.1/cable/node/wire`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/wire

  ```

  </details>

- `@function cable:v0.1/cable/offset`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset
  data modify storage cable:data temp set value {}
  execute align xyz as @e[dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type] rotated as @s run function cable:v0.1/cable/offset/cable
  execute align xyz run function cable:v0.1/cable/offset/core
  ```

  </details>

- `@function cable:v0.1/cable/place`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/place
  # @public
  # Place a cable
  # @context positioned <where to place>
  # @input Cable Registry entry, storage cable:data input, {type:<string>,id:<int>,components:{item_model:<string>,...}}
  execute unless data storage cable:data input run return run function cable:v0.1/util/error/place_no_input
  execute store result score #predicate cable.type run data get storage cable:data input.id
  execute align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] at @s run return run function cable:v0.1/cable/destroy
  execute align xyz if entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run return fail
  execute unless block ~ ~ ~ #cable:replaceable run return fail
  execute align xyz store result score #count cable.math if entity @e[dx=0,type=item_display,tag=cable.core]
  execute if score #count cable.math matches 8.. run return fail
  setblock ~ ~ ~ minecraft:moving_piston destroy
  playsound block.stone.place block @a ~ ~ ~
  scoreboard players set #new cable.network.low 0
  scoreboard players set #new cable.network.high 0
  scoreboard players set #predicate cable.direction 1
  execute align xyz positioned ~1 ~ ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated -90 0 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  scoreboard players set #predicate cable.direction -1
  execute align xyz positioned ~-1 ~ ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 90 0 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  scoreboard players set #predicate cable.direction 2
  execute align xyz positioned ~ ~1 ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 -90 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  scoreboard players set #predicate cable.direction -2
  execute align xyz positioned ~ ~-1 ~ as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 90 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  scoreboard players set #predicate cable.direction 3
  execute align xyz positioned ~ ~ ~1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 0 0 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  scoreboard players set #predicate cable.direction -3
  execute align xyz positioned ~ ~ ~-1 as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] rotated 180 0 positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/place/wire
  execute if score #new cable.network.low matches 0 run function cable:v0.1/cable/network/new_id
  scoreboard players set #predicate cable.direction 1
  execute align xyz rotated -90 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  scoreboard players set #predicate cable.direction -1
  execute align xyz rotated 90 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  scoreboard players set #predicate cable.direction 2
  execute align xyz rotated 0 -90 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  scoreboard players set #predicate cable.direction -2
  execute align xyz rotated 0 90 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  scoreboard players set #predicate cable.direction 3
  execute align xyz rotated 0 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  scoreboard players set #predicate cable.direction -3
  execute align xyz rotated 180 0 positioned ^ ^ ^1 if function #cable:events/can_connect positioned ^ ^ ^-1 summon item_display run function cable:v0.1/cable/place/io
  execute align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] summon item_display run function cable:v0.1/cable/place/core
  execute align xyz run function cable:v0.1/cable/offset
  data remove storage cable:data input
  ```

  </details>

- `@function cable:v0.1/cable/type/redstone`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/type/redstone

  ```

  </details>

- `@function cable:v0.1/event/clicked_wrench`

  <details>

  ```mcfunction
  #> cable:v0.1/event/clicked_wrench
  scoreboard players set @s cable.wrench 0
  function cable:v0.1/item/wrench/click
  ```

  </details>

- `@function cable:v0.1/event/placed_cable`

  <details>

  ```mcfunction
  #> cable:v0.1/event/placed_cable
  advancement revoke @s only cable:placed_cable
  tag @s add cable.placer
  execute as @n[tag=cable.block,distance=..10,type=glow_item_frame] at @s align xyz run function cable:v0.1/event/placed_cable_2 with entity @s data.cable
  tag @s remove cable.placer
  execute if entity @e[limit=1,tag=cable.block,distance=..10,type=glow_item_frame] run function cable:v0.1/event/placed_cable
  ```

  </details>

- `@function cable:v0.1/event/switched_wrench`

  <details>

  ```mcfunction
  #> cable:v0.1/event/switched_wrench
  function cable:v0.1/item/wrench/switch
  advancement revoke @s only cable:switched_wrench
  ```

  </details>

- `@function cable:v0.1/item/_wrench/click`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/click
  execute at @s anchored eyes positioned ^ ^ ^ run function cable:v0.1/item/_wrench/click/ray
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch
  execute if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{cable:{id:"wrench"}}] run return run function cable:v0.1/item/_wrench/switch/mainhand
  execute if items entity @s weapon.offhand warped_fungus_on_a_stick[custom_data~{cable:{id:"wrench"}}] run return run function cable:v0.1/item/_wrench/switch/offhand
  advancement revoke @s only cable:switched_wrench
  ```

  </details>

- `@function cable:v0.1/item/give`

  <details>

  ```mcfunction
  #> cable:v0.1/item/give
  $data modify storage cable:data input set from storage cable:data registry[{type:$(type)}]
  summon item ~ ~ ~ {Tags:["cable.item"],Item:{id:"glow_item_frame",components:{entity_data:{id:"glow_item_frame",Invulnerable:1b,Invisible:1b,Silent:1b,Fixed:1b,Tags:["ccable","cable.block"]}}}}
  execute as @e[limit=1,distance=..0.1,tag=cable.item,type=item] run function cable:v0.1/item/give/init
  ```

  </details>

- `@function cable:v0.1/item/wrench`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench

  ```

  </details>

- `@function cable:v0.1/load`

  <details>

  ```mcfunction
  #> cable:v0.1/load
  function debug:load
  schedule function cable:v0.1/tick 1 replace
  @if MC>=1.21.11
  gamerule max_command_sequence_length 65536
  gamerule max_command_forks 65536
  @else
  gamerule maxCommandChainLength 65536
  gamerule maxCommandForkCount 65536
  @endif
  scoreboard objectives add cable.math dummy
  scoreboard objectives add cable.network.low dummy
  scoreboard objectives add cable.network.high dummy
  scoreboard objectives add cable.network.process_queue dummy
  scoreboard objectives add cable.type dummy
  scoreboard objectives add cable.direction dummy
  scoreboard objectives add cable.channel.extract dummy
  scoreboard objectives add cable.channel.insert dummy
  scoreboard objectives add cable.channel.redstone dummy
  scoreboard objectives add cable.io.priority dummy
  scoreboard objectives add cable.wrench minecraft.used:minecraft.warped_fungus_on_a_stick
  scoreboard players set #-1 cable.math -1
  scoreboard players set #2 cable.math 2
  scoreboard players set #10 cable.math 10
  scoreboard players set #64 cable.math 64
  scoreboard players set #process_queue cable.math 20
  team add cable.no_collision
  team modify cable.no_collision collisionRule never
  function cable:v0.1/register {type:"redstone",components:{item_name:"Redstone Cable",item_model:"cable:redstone_cable"}}
  function cable:v0.1/register {type:"item",components:{item_name:"Item Cable",item_model:"cable:item_cable"}}
  function cable:v0.1/register {type:"energy",components:{item_name:"Energy Cable",item_model:"cable:energy_cable"}}
  function cable:v0.1/register {type:"enhanced_energy",tier:"enhanced",components:{item_name:"Enhanced Energy Cable",item_model:"cable:enhanced_energy_cable"}}
  function cable:v0.1/register {type:"ender_energy",tier:"ender",components:{item_name:"Ender Energy Cable",item_model:"cable:ender_energy_cable"}}
  function cable:v0.1/register {type:"fluid",components:{item_name:"Fluid Cable",item_model:"cable:fluid_cable"}}
  function cable:v0.1/register {type:"pressurized_fluid",tier:"pressurized",components:{item_name:"Pressurized Fluid Cable",item_model:"cable:pressurized_fluid_cable"}}
  function cable:v0.1/register {type:"ender_fluid",tier:"ender",components:{item_name:"Ender Fluid Cable",item_model:"cable:ender_fluid_cable"}}
  ```

  </details>

- `@function cable:v0.1/register`

  <details>

  ```mcfunction
  #> cable:v0.1/register
  $data modify storage cable:data input set value { type:"$(type)", components:$(components) }  
  execute store result storage cable:data input.id int 1 run data get storage cable:registry cables
  $data modify storage cable:data input.id set from storage cable:registry cables[{type:"$(type)"}].id
  $execute unless data storage cable:registry cables[{type:"$(type)"}] run data modify storage cable:registry cables append value {type:"$(type)"}
  $data modify storage cable:registry cables[{type:"$(type)"}] set from storage cable:data input
  ```

  </details>

- `@function cable:v0.1/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/tick
  schedule function cable:v0.1/tick 1 replace
  function cable:v0.1/cable/node/tick
  function cable:v0.1/cable/process/tick
  execute as @a[predicate=cable:debug_goggles] at @s run function cable:v0.1/tick/debug
  execute as @a if score @s cable.wrench matches 1.. run function cable:v0.1/event/clicked_wrench
  ```

  </details>

- `@function cable:v0.1/util`

  <details>

  ```mcfunction
  #> cable:v0.1/util

  ```

  </details>

- `@function cable:v0.1/cable/collision/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/collision/tick
  execute as @e[type=item_display,tag=cable.collision] at @s run return 1
  ```

  </details>

- `@function cable:v0.1/cable/interaction/search`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/search
  scoreboard players remove #reach cable.math 1
  tag @e[type=item_display,distance=..0.5,tag=cable.node] add cable.found
  tag @e[type=interaction,distance=..1,tag=cable.interaction] add cable.found
  execute if score #reach cable.math matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #cable:replaceable run function cable:v0.1/cable/interaction/search
  ```

  </details>

- `@function cable:v0.1/cable/interaction/summon/core`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/summon/core
  tp @s ~ ~ ~ ~ ~
  data merge entity @s {Tags:["cable","cable.interaction","cable.interaction.core"],width:0.2d,height:0.2d}
  scoreboard players operation @s cable.type = #predicate cable.type
  function #bs.interaction:on_left_click {run:"function cable:v0.1/cable/interaction/on_left_click",executor:"target"}
  function #bs.interaction:on_right_click {run:"function cable:v0.1/cable/interaction/on_right_click",executor:"target"}
  ```

  </details>

- `@function cable:v0.1/cable/interaction/summon/wire_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/summon/wire_2
  tp @s ~ ~ ~ ~ ~
  data merge entity @s {Tags:["cable","cable.interaction","cable.interaction.wire"],width:0.2d,height:0.2d}
  scoreboard players operation @s cable.type = #predicate cable.type
  scoreboard players operation @s cable.direction = #predicate cable.direction
  function #bs.interaction:on_left_click {run:"function cable:v0.1/cable/interaction/on_left_click",executor:"target"}
  function #bs.interaction:on_right_click {run:"function cable:v0.1/cable/interaction/on_right_click",executor:"target"}
  ```

  </details>

- `@function cable:v0.1/cable/interaction/summon/wire`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/summon/wire
  execute positioned ^ ^ ^0.2 unless entity @e[type=interaction,distance=..0.1,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] summon interaction run function cable:v0.1/cable/interaction/summon/wire_2
  execute positioned ^ ^ ^0.4 unless entity @e[type=interaction,distance=..0.1,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] summon interaction run function cable:v0.1/cable/interaction/summon/wire_2
  ```

  </details>

- `@function cable:v0.1/cable/interaction/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/tick
  execute store result score #reach cable.math run attribute @p minecraft:block_interaction_range get 10
  execute as @a at @s anchored eyes positioned ^ ^ ^ run function cable:v0.1/cable/interaction/search
  execute as @e[type=interaction,tag=cable.interaction,tag=!cable.found] at @s run function cable:killme
  execute as @e[type=item_display,tag=cable.node,tag=cable.found] at @s rotated as @s positioned ~ ~-0.1 ~ run function cable:v0.1/cable/interaction/check
  tag @e[tag=cable.found] remove cable.found
  ```

  </details>

- `@function cable:v0.1/cable/interaction/check`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/check
  scoreboard players operation #predicate cable.type = @s cable.type
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute as @s[tag=cable.core] unless entity @e[type=interaction,distance=..0.1,tag=cable.interaction.core,predicate=cable:same_type] summon interaction run function cable:v0.1/cable/interaction/summon/core
  execute as @s[tag=cable.wire] run function cable:v0.1/cable/interaction/summon/wire
  ```

  </details>

- `@function cable:v0.1/cable/interaction/on_left_click`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/on_left_click
  scoreboard players operation #predicate cable.type = @s cable.type
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute at @s[tag=cable.interaction.core] align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function cable:v0.1/cable/destroy
  execute at @s[tag=cable.interaction.wire] align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:same_direction] run function cable:v0.1/cable/destroy_wire
  ```

  </details>

- `@function cable:v0.1/cable/interaction/on_right_click`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/on_right_click
  say right click
  ```

  </details>

- `@function cable:v0.1/cable/interaction/offset`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/interaction/offset
  execute as @s[tag=cable.core] at @s run tp @n[type=interaction,distance=..0.6,tag=cable.interaction.core,predicate=cable:same_type] ~ ~ ~
  execute as @s[tag=cable.wire] at @s positioned ^ ^ ^0.2 run tp @n[type=interaction,distance=..0.6,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~
  execute as @s[tag=cable.wire] at @s positioned ^ ^ ^0.4 run tp @n[type=interaction,distance=..0.6,tag=cable.interaction.wire,predicate=cable:same_type,predicate=cable:same_direction] ~ ~ ~
  ```

  </details>

- `@function cable:v0.1/cable/network/new_id`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/new_id
  scoreboard players add #global_network cable.network.low 1
  execute if score #global_network cable.network.low matches 2147483647 run scoreboard players add #global_network cable.network.high 1
  execute if score #global_network cable.network.low matches 2147483647 run scoreboard players set #global_network cable.network.low 1
  scoreboard players operation #new cable.network.low = #global_network cable.network.low
  scoreboard players operation #new cable.network.high = #global_network cable.network.high
  return 1
  ```

  </details>

- `@function cable:v0.1/cable/network/set_new_all`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/set_new_all
  scoreboard players operation #predicate cable.network.low = @s cable.network.low
  scoreboard players operation #predicate cable.network.high = @s cable.network.high
  execute as @e[type=item_display,tag=cable.network,predicate=cable:same_network] run function cable:v0.1/cable/network/set_new
  ```

  </details>

- `@function cable:v0.1/cable/network/copy_new`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/copy_new
  scoreboard players operation #new cable.network.low = @s cable.network.low
  scoreboard players operation #new cable.network.high = @s cable.network.high
  ```

  </details>

- `@function cable:v0.1/cable/network/set_new`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/set_new
  scoreboard players operation @s cable.network.low = #new cable.network.low
  scoreboard players operation @s cable.network.high = #new cable.network.high
  execute if score @s cable.network.process_queue matches 0.. run function cable:v0.1/cable/network/process_queue
  ```

  </details>

- `@function cable:v0.1/cable/network/set_new_walk`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/set_new_walk
  tag @s add cable.checked
  function cable:v0.1/cable/network/set_new
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute at @s[tag=cable.wire] positioned ^ ^ ^1 align xyz if entity @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_type,predicate=cable:opposite_direction] as @e[dx=0,type=item_display,tag=cable.network,tag=!cable.checked,predicate=cable:same_type] run function cable:v0.1/cable/network/set_new_walk
  ```

  </details>

- `@function cable:v0.1/cable/network/process_queue`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/network/process_queue
  scoreboard players operation @s cable.network.process_queue = @s cable.network.low
  scoreboard players operation @s cable.network.process_queue %= #process_queue cable.math
  ```

  </details>

- `@function cable:v0.1/cable/process/summon_marker`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/process/summon_marker
  data merge entity @s {Tags:["cable.io.transfer","itemio.transfer.destination"],data:{itemio:{input_side:"wireless",ioconfig:{}}}}
  execute if score #predicate cable.direction matches 1 run data modify entity @s data.itemio.input_side set value "east"
  execute if score #predicate cable.direction matches -1 run data modify entity @s data.itemio.input_side set value "west"
  execute if score #predicate cable.direction matches 2 run data modify entity @s data.itemio.input_side set value "up"
  execute if score #predicate cable.direction matches -2 run data modify entity @s data.itemio.input_side set value "down"
  execute if score #predicate cable.direction matches 3 run data modify entity @s data.itemio.input_side set value "south"
  execute if score #predicate cable.direction matches -3 run data modify entity @s data.itemio.input_side set value "north"
  ```

  </details>

- `@function cable:v0.1/cable/process/tick_4`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/process/tick_4
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute align xyz positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 summon marker run function cable:v0.1/cable/process/summon_marker
  ```

  </details>

- `@function cable:v0.1/cable/process/tick_3`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/process/tick_3
  execute if entity @s[tag=!cable.io.self_feed] as @n[distance=0.1..,type=item_display,tag=cable.io.insert,predicate=cable:same_type,predicate=cable:same_network,predicate=cable:same_process_queue] at @s run function cable:v0.1/cable/process/tick_4
  execute if entity @s[tag=cable.io.self_feed] run say self feed
  ```

  </details>

- `@function cable:v0.1/cable/process/tick_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/process/tick_2
  scoreboard players operation #predicate cable.type = @s cable.type
  scoreboard players operation #predicate cable.network.low = @s cable.network.low
  scoreboard players operation #predicate cable.network.high = @s cable.network.high
  execute if entity @s[tag=!cable.io.round_robin] run function cable:v0.1/cable/process/tick_3
  execute if entity @s[tag=cable.io.round_robin] run say round robin
  scoreboard players operation #predicate cable.direction = @s cable.direction
  scoreboard players set #max_output_count itemio.io 32
  data remove storage itemio:io output
  data remove storage itemio:io input
  data merge storage itemio:io {output_side:"wireless"}
  execute if score #predicate cable.direction matches 1 run data modify storage itemio:io output_side set value "east"
  execute if score #predicate cable.direction matches -1 run data modify storage itemio:io output_side set value "west"
  execute if score #predicate cable.direction matches 2 run data modify storage itemio:io output_side set value "up"
  execute if score #predicate cable.direction matches -2 run data modify storage itemio:io output_side set value "down"
  execute if score #predicate cable.direction matches 3 run data modify storage itemio:io output_side set value "south"
  execute if score #predicate cable.direction matches -3 run data modify storage itemio:io output_side set value "north"
  execute positioned ^ ^ ^1 run function #itemio:calls/transfer
  kill @e[type=marker,tag=cable.io.transfer]
  ```

  </details>

- `@function cable:v0.1/cable/process/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/process/tick
  scoreboard players add #predicate cable.network.process_queue 1
  scoreboard players operation #predicate cable.network.process_queue %= #process_queue cable.math
  execute as @e[type=item_display,tag=cable.io.extract,predicate=cable:same_process_queue] at @s run function cable:v0.1/cable/process/tick_2
  ```

  </details>

- `@function cable:v0.1/cable/destroy_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/destroy_2
  scoreboard players operation #predicate cable.type = @s cable.type
  execute if entity @s[tag=cable.io] run function cable:v0.1/cable/node/io/destroy
  function cable:v0.1/cable/node/wire/destroy
  tag @s add cable.me
  execute align xyz if entity @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.io,tag=!cable.me,predicate=cable:same_type] run function cable:v0.1/cable/network/new_id
  execute align xyz as @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] run function cable:v0.1/cable/network/set_new_walk
  tag @s remove cable.me
  tag @e[type=item_display,tag=cable.checked] remove cable.checked
  ```

  </details>

- `@function cable:v0.1/cable/destroy_wire`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/destroy_wire
  # @public
  # @context as @e[tag=cable.wire]
  execute unless entity @s[tag=cable.wire] run return fail
  execute at @s run playsound block.stone.break block @a ~ ~ ~
  scoreboard players operation #predicate cable.type = @s cable.type
  execute if entity @s[tag=cable.io] run function cable:v0.1/cable/node/io/destroy
  function cable:v0.1/cable/node/wire/destroy
  function cable:v0.1/cable/network/new_id
  execute at @s align xyz as @e[dx=0,type=item_display,tag=cable.network,predicate=cable:same_type] run function cable:v0.1/cable/network/set_new_walk
  tag @e[type=item_display,tag=cable.checked] remove cable.checked
  ```

  </details>

- `@function cable:v0.1/cable/node/core/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/core/summon
  scoreboard players set #predicate cable.direction 0
  execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
  function cable:v0.1/cable/node/summon
  tag @s add cable.core
  data modify entity @s item.components."minecraft:custom_model_data" set value {flags:[0b]}
  function cable:v0.1/cable/node/offset
  ```

  </details>

- `@function cable:v0.1/cable/node/core/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/core/destroy
  scoreboard players operation #predicate cable.type = @s cable.type
  execute at @s as @e[distance=..0.1,type=item_display,tag=cable.collision.core,predicate=cable:same_type] run function cable:killme
  execute at @s as @e[distance=..0.1,type=interaction,tag=cable.interaction.core,predicate=cable:same_type] run function cable:killme
  kill @s
  function cable:v0.1/cable/node/offset
  ```

  </details>

- `@function cable:v0.1/cable/node/core/add`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/core/add
  data modify entity @s item.components."minecraft:custom_model_data".flags[0] set value 0b
  tag @s add cable.core
  ```

  </details>

- `@function cable:v0.1/cable/node/io/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/summon
  function cable:v0.1/cable/node/wire/summon
  tag @s add cable.io
  tag @s add cable.io.extract
  function cable:v0.1/cable/node/io/update_model
  execute positioned as @s align xyz unless entity @n[dx=0,type=item_frame,tag=cable.connector,predicate=cable:same_direction] positioned ~0.5 ~0.5 ~0.5 summon item_frame run function cable:v0.1/cable/node/io/connector/summon
  ```

  </details>

- `@function cable:v0.1/cable/node/io/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/destroy
  scoreboard players operation #predicate cable.type = @s cable.type
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute at @s align xyz unless entity @e[dx=0,type=item_display,tag=cable.io,predicate=!cable:same_type,predicate=cable:same_direction] as @n[dx=0,type=item_frame,tag=cable.connector,predicate=cable:same_direction] run function cable:v0.1/cable/node/io/connector/destroy
  ```

  </details>

- `@function cable:v0.1/cable/node/io/update_model`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/update_model
  data modify entity @s[tag=!cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [2.0f]
  data modify entity @s[tag=!cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [3.0f]
  data modify entity @s[tag=cable.io.insert,tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats set value [4.0f]
  data modify entity @s[tag=cable.io.insert,tag=cable.io.extract] item.components."minecraft:custom_model_data".floats set value [5.0f]
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/tick_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/tick_2
  tag @s remove cable.looking_at_connector
  function #bs.view:as_aimed_entity {run:"function cable:v0.1/cable/node/io/connector/looking",with:{entities:"cable.connector",ignored_entities:"chest_minecart"}}
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/summon
  data merge entity @s {Tags:["cable","cable.connector"],Silent:1b,Invulnerable:1b,Invisible:1b,Fixed:1b,Item:{id:"coal",components:{item_model:"cable:base/connector",custom_model_data:{colors:[[1,0,0]]}}}}
  scoreboard players operation @s cable.type = #predicate cable.type
  scoreboard players operation @s cable.direction = #predicate cable.direction
  execute if score #predicate cable.direction matches 1 run data modify entity @s Facing set value 4
  execute if score #predicate cable.direction matches -1 run data modify entity @s Facing set value 5
  execute if score #predicate cable.direction matches 2 run data modify entity @s Facing set value 0
  execute if score #predicate cable.direction matches -2 run data modify entity @s Facing set value 1
  execute if score #predicate cable.direction matches 3 run data modify entity @s Facing set value 2
  execute if score #predicate cable.direction matches -3 run data modify entity @s Facing set value 3
  tp @s ~ ~ ~
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/destroy
  execute if entity @s[tag=cable.connector.selected] at @s run kill @e[distance=..0.4,type=chest_minecart,tag=cable.connector.gui]
  kill @s[tag=cable.connector]
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/tick
  execute as @a if predicate cable:looking_at_connector run tag @s add cable.looking_at_connector
  execute as @a[tag=cable.looking_at_connector] run function cable:v0.1/cable/node/io/connector/tick_2
  execute as @e[type=item_frame,tag=cable.connector,tag=cable.connector.selected,tag=!cable.connector.looked_at] run function cable:v0.1/cable/node/io/connector/deselect
  tag @e[type=item_frame,tag=cable.connector,tag=cable.connector.looked_at] remove cable.connector.looked_at
  execute as @e[type=chest_minecart,tag=cable.connector.gui] at @s run function cable:v0.1/cable/node/io/gui/tick
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/looking`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/looking
  tag @p add cable.looking_at_connector
  tag @s add cable.connector.looked_at
  execute unless entity @s[tag=cable.connector.selected] at @s positioned ~ ~-0.3 ~ run function cable:v0.1/cable/node/io/gui/summon
  tag @s add cable.connector.selected
  data modify entity @s Item.components."minecraft:custom_model_data".flags set value [1b]
  ```

  </details>

- `@function cable:v0.1/cable/node/io/connector/deselect`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/connector/deselect
  tag @s remove cable.connector.selected
  data modify entity @s Item.components."minecraft:custom_model_data".flags set value [0b]
  execute at @s align xyz run kill @n[dx=0,type=chest_minecart,tag=cable.connector.gui]
  execute as @e[type=item] if items entity @s contents coal[custom_data~{cable:{gui:1b}}] run kill @s
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/insert/disable`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/insert/disable
  tag @s remove cable.io.insert
  data modify entity @s[tag=cable.io.extract] item.components."minecraft:custom_model_data".floats[0] set value 3.0f
  data modify entity @s[tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats[0] set value 2.0f
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/insert/enable`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/insert/enable
  tag @s add cable.io.insert
  data modify entity @s[tag=cable.io.extract] item.components."minecraft:custom_model_data".floats[0] set value 5.0f
  data modify entity @s[tag=!cable.io.extract] item.components."minecraft:custom_model_data".floats[0] set value 4.0f
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/extract/disable`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/extract/disable
  tag @s remove cable.io.extract
  data modify entity @s[tag=cable.io.insert] item.components."minecraft:custom_model_data".floats[0] set value 4.0f
  data modify entity @s[tag=!cable.io.insert] item.components."minecraft:custom_model_data".floats[0] set value 2.0f
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/extract/enable`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/extract/enable
  tag @s add cable.io.extract
  data modify entity @s[tag=cable.io.insert] item.components."minecraft:custom_model_data".floats[0] set value 5.0f
  data modify entity @s[tag=!cable.io.insert] item.components."minecraft:custom_model_data".floats[0] set value 3.0f
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/summon
  summon chest_minecart ~ ~ ~ {Tags:["cable","cable.connector.gui"],Rotation:[24.0f,24.0f],NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,CustomName:[{text:""},{color:"#7B7B00",font:"cable:icons",translate:"block.cable.redstone.gui"},{translate:"space.-4096"}],DisplayState:{Name:"minecraft:barrier"},Items:[{Slot:0b,id:"minecraft:coal",components:{custom_data:{cable:{gui:1b}}}},{Slot:4b,id:"minecraft:coal",components:{custom_data:{cable:{gui:1b}}}}]}
  team join cable.no_collision @n[type=chest_minecart,tag=cable.connector.gui]
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/tick`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/tick
  rotate @s 24 24
  execute unless items entity @s container.0 coal[custom_data~{cable:{gui:1b}}] run function cable:v0.1/cable/node/io/gui/insert/click
  item replace entity @s container.0 with coal[item_model="air",custom_data={cable:{gui:1b}}]
  execute unless items entity @s container.4 coal[custom_data~{cable:{gui:1b}}] run function cable:v0.1/cable/node/io/gui/extract/click
  item replace entity @s container.4 with coal[item_model="air",custom_data={cable:{gui:1b}}]
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/insert/click`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/insert/click
  data remove storage cable:data temp.Item
  data modify storage cable:data temp.Item set from entity @s Items[0]
  function cable:v0.1/cable/node/io/gui/return_item
  execute as @n[type=item_display,tag=cable.io,tag=cable.io.insert] run return run function cable:v0.1/cable/node/io/gui/insert/disable
  execute as @n[type=item_display,tag=cable.io] run function cable:v0.1/cable/node/io/gui/insert/enable
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/extract/click`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/extract/click
  data remove storage cable:data temp.Item
  data modify storage cable:data temp.Item set from entity @s Items[4]
  function cable:v0.1/cable/node/io/gui/return_item
  execute as @n[type=item_display,tag=cable.io,tag=cable.io.extract] run return run function cable:v0.1/cable/node/io/gui/extract/disable
  execute as @n[type=item_display,tag=cable.io] run function cable:v0.1/cable/node/io/gui/extract/enable
  ```

  </details>

- `@function cable:v0.1/cable/node/io/gui/return_item`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/io/gui/return_item
  execute if data storage cable:data temp.Item.Slot as @p[gamemode=!spectator] at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},Tags:["cable.replace_item","global.ignore"]}
  data modify entity @e[type=item,tag=cable.replace_item,limit=1] Item set from storage cable:data temp.Item
  data remove storage cable:data temp.Item
  tag @e[type=item,limit=1,tag=cable.replace_item] remove cable.replace_item
  ```

  </details>

- `@function cable:v0.1/cable/node/wire/destroy_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/wire/destroy_2
  execute positioned ^ ^ ^0.5 as @e[distance=..0.1,type=item_display,tag=cable.collision.wire,predicate=cable:same_type] run function cable:killme
  execute positioned ^ ^ ^0.2 as @e[distance=..0.1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme
  execute positioned ^ ^ ^0.4 as @e[distance=..0.1,type=interaction,tag=cable.interaction.wire,predicate=cable:same_type] run function cable:killme
  execute if entity @s[tag=!cable.core] run return run kill @s
  execute align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run return run function cable:v0.1/cable/node/core/summon
  execute align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.wire,tag=!cable.core,predicate=cable:same_type] run function cable:v0.1/cable/node/core/add
  kill @s
  ```

  </details>

- `@function cable:v0.1/cable/node/wire/summon`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/wire/summon
  execute if entity @s[tag=!cable.node] store result score #predicate cable.type run data get storage cable:data input.id
  function cable:v0.1/cable/node/summon
  tag @s add cable.wire
  data modify entity @s item.components."minecraft:custom_model_data" set value {floats:[1.0f],flags:[1b]}
  execute align xyz unless entity @e[limit=1,dx=0,type=item_display,tag=cable.core,predicate=cable:same_type] run function cable:v0.1/cable/node/core/add
  ```

  </details>

- `@function cable:v0.1/cable/node/wire/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/node/wire/destroy
  scoreboard players operation #predicate cable.type = @s cable.type
  scoreboard players operation #predicate cable.direction = @s cable.direction
  execute at @s positioned ^ ^ ^1 align xyz as @e[dx=0,limit=1,type=item_display,tag=cable.wire,predicate=cable:same_type,predicate=cable:opposite_direction] at @s run function cable:v0.1/cable/node/wire/destroy_2
  execute at @s run function cable:v0.1/cable/node/wire/destroy_2
  ```

  </details>

- `@function cable:v0.1/cable/offset/cable_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/cable_2
  execute if predicate cable:direction_ew rotated 90 0 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function cable:v0.1/cable/offset/tp
  execute if predicate cable:direction_ud rotated 0 90 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function cable:v0.1/cable/offset/tp
  execute if predicate cable:direction_sn rotated 0 0 as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function cable:v0.1/cable/offset/tp
  ```

  </details>

- `@function cable:v0.1/cable/offset/cable`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/cable
  scoreboard players operation #predicate cable.direction = @s cable.direction
  data modify storage cable:data temp.sort set value [{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1}]
  execute as @e[dx=0,type=item_display,tag=cable.wire,tag=!cable.checked,predicate=cable:same_direction] run function cable:v0.1/cable/offset/enumerate
  data remove storage cable:data temp.sort[{i:-1}]
  execute store result score #count cable.type run data get storage cable:data temp.sort
  function cable:v0.1/cable/offset/cable_2
  scoreboard players operation #predicate cable.direction *= #-1 cable.math
  execute positioned ^ ^ ^1 run function cable:v0.1/cable/offset/cable_2
  execute positioned ^ ^ ^1 run function cable:v0.1/cable/offset/core
  ```

  </details>

- `@function cable:v0.1/cable/offset/core_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/core_2
  execute as @e[dx=0,type=item_display,tag=cable.core,tag=!cable.wire] run function cable:v0.1/cable/offset/tp
  ```

  </details>

- `@function cable:v0.1/cable/offset/core`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/core
  data modify storage cable:data temp.sort set value [{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1},{i:-1}]
  execute as @e[type=item_display,dx=0,tag=cable.core,tag=!cable.checked] run function cable:v0.1/cable/offset/enumerate
  data remove storage cable:data temp.sort[{i:-1}]
  execute store result score #count cable.type run data get storage cable:data temp.sort
  execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_ew] rotated 90 0 run return run function cable:v0.1/cable/offset/core_2
  execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_sn] rotated 0 0 run return run function cable:v0.1/cable/offset/core_2
  execute if entity @e[limit=1,dx=0,type=item_display,tag=cable.wire,predicate=cable:direction_ud] rotated 0 90 run return run function cable:v0.1/cable/offset/core_2
  execute rotated 0 0 run function cable:v0.1/cable/offset/core_2
  ```

  </details>

- `@function cable:v0.1/cable/offset/enumerate_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/enumerate_2
  $execute store result storage cable:data temp.sort[$(index)].i int 1 run scoreboard players get @s cable.type 
  ```

  </details>

- `@function cable:v0.1/cable/offset/tp_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/tp_2
  execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
  execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
  execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
  ```

  </details>

- `@function cable:v0.1/cable/offset/tp_3`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/tp_3
  execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
  execute if score @s cable.type = #index cable.type run tp @s ^-0.2 ^0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
  execute if score @s cable.type = #index cable.type run tp @s ^ ^ ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[2].i
  execute if score @s cable.type = #index cable.type run tp @s ^0.2 ^-0.2 ^
  ```

  </details>

- `@function cable:v0.1/cable/offset/tp_4-8`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/tp_4-8
  execute store result score #index cable.type run data get storage cable:data temp.sort[0].i
  execute if score @s cable.type = #index cable.type run tp @s ^ ^0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[1].i
  execute if score @s cable.type = #index cable.type run tp @s ^0.2 ^ ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[2].i
  execute if score @s cable.type = #index cable.type run tp @s ^ ^-0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[3].i
  execute if score @s cable.type = #index cable.type run tp @s ^-0.2 ^ ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[4].i
  execute if data storage cable:data temp.sort[4] if score @s cable.type = #index cable.type run tp @s ^0.2 ^0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[5].i
  execute if data storage cable:data temp.sort[5] if score @s cable.type = #index cable.type run tp @s ^0.2 ^-0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[6].i
  execute if data storage cable:data temp.sort[6] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^-0.2 ^
  execute store result score #index cable.type run data get storage cable:data temp.sort[7].i
  execute if data storage cable:data temp.sort[7] if score @s cable.type = #index cable.type run tp @s ^-0.2 ^0.2 ^
  ```

  </details>

- `@function cable:v0.1/cable/offset/enumerate`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/enumerate
  execute store result storage cable:data temp.index int 1 run scoreboard players get @s cable.type
  function cable:v0.1/cable/offset/enumerate_2 with storage cable:data temp
  ```

  </details>

- `@function cable:v0.1/cable/offset/tp`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/offset/tp
  execute if score @s cable.direction matches 0 run rotate @s ~ ~
  execute if score #count cable.type matches 1 align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ^ ^ ^
  execute if score #count cable.type matches 2 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/offset/tp_2
  execute if score #count cable.type matches 3 align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/offset/tp_3
  execute if score #count cable.type matches 4.. align xyz positioned ~0.5 ~0.5 ~0.5 run function cable:v0.1/cable/offset/tp_4-8
  function cable:v0.1/cable/collision/offset
  function cable:v0.1/cable/interaction/offset
  ```

  </details>

- `@function cable:v0.1/cable/place/wire_2`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/place/wire_2
  function cable:v0.1/cable/network/set_new
  function cable:v0.1/cable/node/wire/summon
  ```

  </details>

- `@function cable:v0.1/cable/m.place`

  <details>

  ```
  #> cable:v0.1/cable/m.place
  # @public
  # Place a cable
  # @context positioned <where to place>
  # @args $(type):<string>
  data remove storage cable:data input
  $data modify storage cable:data input set from storage cable:registry cables[{type:$(type)}]
  function cable:v0.1/cable/place
  ```

  </details>

- `@function cable:v0.1/cable/place/core`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/place/core
  function cable:v0.1/cable/network/set_new
  function cable:v0.1/cable/node/core/summon
  ```

  </details>

- `@function cable:v0.1/cable/place/wire`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/place/wire
  execute if score #new cable.network.low matches 1.. run function cable:v0.1/cable/network/set_new_all
  execute if score #new cable.network.low matches 0 run function cable:v0.1/cable/network/copy_new
  execute positioned ^ ^ ^-1 align xyz summon item_display run function cable:v0.1/cable/place/wire_2
  scoreboard players operation #predicate cable.direction *= #-1 cable.math
  execute facing ^ ^ ^-1 align xyz as @e[limit=1,dx=0,type=item_display,tag=cable.core,tag=!cable.wire,predicate=cable:same_type] run return run function cable:v0.1/cable/place/wire_2
  execute facing ^ ^ ^-1 align xyz summon item_display run function cable:v0.1/cable/place/wire_2
  ```

  </details>

- `@function cable:v0.1/cable/place/io`

  <details>

  ```mcfunction
  #> cable:v0.1/cable/place/io
  function cable:v0.1/cable/network/set_new
  function cable:v0.1/cable/network/process_queue
  function cable:v0.1/cable/node/io/summon
  ```

  </details>

- `@function cable:v0.1/event/placed_cable_2`

  <details>

  ```mcfunction
  #> cable:v0.1/event/placed_cable_2
  data remove storage cable:data input
  $data modify storage cable:data input set from storage cable:registry cables[{type:$(type)}]
  execute unless data storage cable:data input run return run kill @s
  execute rotated 0 0 run function cable:v0.1/cable/place
  kill @s
  ```

  </details>

- `@function cable:v0.1/item/_wrench/click/ray`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/click/ray
  execute as @e[distance=..0.1,tag=cable.core,type=item_display] at @s run particle smoke
  execute if block ~ ~ ~ #cable:replaceable positioned ^ ^ ^0.1 run function cable:v0.1/item/_wrench/click/ray
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/update_3`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/update_3
  $data modify storage cable:data temp.Item.components."minecraft:item_name" set value ["Wrench ", {atlas:"minecraft:blocks",sprite:"cable:block/$(type)_core"}]
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/update_2`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/update_2
  $data modify storage cable:data temp.cable set from storage cable:data registry[{id:$(type_id)}]
  function cable:v0.1/item/_wrench/switch/update_3 with storage cable:data temp.cable
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/update_4`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/update_4
  data modify storage cable:data temp.Item.components."minecraft:item_name" set value "Wrench"
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/mainhand_2`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/mainhand_2
  data modify entity @s item set from storage cable:data temp.Item
  item replace entity @a[limit=1,tag=cable.switched_wrench] weapon.offhand from entity @s contents
  kill @s
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/offhand_2`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/offhand_2
  data modify entity @s item set from storage cable:data temp.Item
  item replace entity @a[limit=1,tag=cable.switched_wrench] weapon.mainhand from entity @s contents
  kill @s
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/update`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/update
  execute store result score #count cable.math run data get storage cable:data registry
  scoreboard players set #index cable.math -1
  execute if data storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id store result score #index cable.math run data get storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id
  scoreboard players add #index cable.math 1
  execute if score #index cable.math >= #count cable.math run scoreboard players set #index cable.math -1
  execute store result storage cable:data temp.Item.components."minecraft:custom_data".cable.type_id int 1 run scoreboard players get #index cable.math
  execute if score #index cable.math matches 0.. run function cable:v0.1/item/_wrench/switch/update_2 with storage cable:data temp.Item.components."minecraft:custom_data".cable
  execute if score #index cable.math matches -1 run function cable:v0.1/item/_wrench/switch/update_4
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/mainhand`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/mainhand
  data remove storage cable:data temp
  data modify storage cable:data temp.Item set from entity @s SelectedItem
  function cable:v0.1/item/_wrench/switch/update
  tag @s add cable.switched_wrench
  item replace entity @s weapon.mainhand from entity @s weapon.offhand
  execute summon item_display run function cable:v0.1/item/_wrench/switch/mainhand_2
  tag @s remove cable.switched_wrench
  ```

  </details>

- `@function cable:v0.1/item/_wrench/switch/offhand`

  <details>

  ```mcfunction
  #> cable:v0.1/item/_wrench/switch/offhand
  data remove storage cable:data temp
  data modify storage cable:data temp.Item set from entity @s equipment.offhand
  function cable:v0.1/item/_wrench/switch/update
  tag @s add cable.switched_wrench
  item replace entity @s weapon.offhand from entity @s weapon.mainhand
  execute summon item_display run function cable:v0.1/item/_wrench/switch/offhand_2
  tag @s remove cable.switched_wrench
  ```

  </details>

- `@function cable:v0.1/item/give/init`

  <details>

  ```mcfunction
  #> cable:v0.1/item/give/init
  tag @s remove cable.item
  data modify entity @s Item.components merge from storage cable:data input.components
  data modify entity @s Item.components."minecraft:custom_data".cable.id set value "cable"
  data modify entity @s Item.components."minecraft:custom_data".cable.type set from storage cable:data input.type
  ```

  </details>

- `@function cable:v0.1/item/give/all_loop`

  <details>

  ```mcfunction
  #> cable:v0.1/item/give/all_loop
  data modify storage cable:data input set from storage cable:data temp.registry[0]
  summon item ~ ~ ~ {Tags:["cable.item"],Item:{id:"glow_item_frame",components:{entity_data:{id:"glow_item_frame",Invulnerable:1b,Invisible:1b,Silent:1b,Fixed:1b,Tags:["cable","cable.block"]}}}}
  execute as @e[limit=1,distance=..0.1,tag=cable.item,type=item] run function cable:v0.1/item/give/init
  data remove storage cable:data temp.registry[0]
  execute if data storage cable:data temp.registry[0] run function cable:v0.1/item/give/all_loop
  ```

  </details>

- `@function cable:v0.1/item/give/all`

  <details>

  ```mcfunction
  #> cable:v0.1/item/give/all
  data modify storage cable:data temp.registry set from storage cable:data registry
  function cable:v0.1/item/give/all_loop
  ```

  </details>

- `@function cable:v0.1/item/wrench/give_2`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench/give_2
  data modify storage cable:data temp[0] merge value {id:"minecraft:stone",components:{max_stack_size:1,custom_data:{wrench_select_type:1}}}
  data modify entity @s Item.components."minecraft:bundle_contents" append from storage cable:data temp[0]
  data remove storage cable:data temp[0]
  execute if data storage cable:data temp[0] run function cable:v0.1/item/wrench/give_2
  ```

  </details>

- `@function cable:v0.1/item/wrench/right_click_2`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench/right_click_2
  say @s
  say test
  ```

  </details>

- `@function cable:v0.1/item/wrench/give`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench/give
  data modify storage cable:data temp set from storage cable:registry cables
  summon item ~ ~ ~ {Tags:[cable.item],Item:{id:"minecraft:white_bundle",components:{custom_data:{cable:{id:"wrench"}},item_name:[{"text":"\uc003\uf050","font":"cable:icons"},{"text":"Wrench","font":"minecraft:default"}],item_model:"cable:wrench",bundle_contents:[]}}}
  execute as @n[dx=0,tag=cable.item,type=item] run function cable:v0.1/item/wrench/give_2
  ```

  </details>

- `@function cable:v0.1/item/wrench/right_click`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench/right_click
  advancement revoke @s only cable:wrench/right_click
  execute anchored eyes positioned ^ ^ ^ as @e[distance=..0.1,type=item] if items entity @s contents stone[minecraft:custom_data~{wrench_select_type:1b}] at @s run function cable:v0.1/item/wrench/right_click_2
  ```

  </details>

- `@function cable:v0.1/item/wrench/select_type`

  <details>

  ```mcfunction
  #> cable:v0.1/item/wrench/select_type
  advancement revoke @s only cable:wrench/select_type
  say select_type
  ```

  </details>

- `@function cable:v0.1/tick/debug`

  <details>

  ```mcfunction
  #> cable:v0.1/tick/debug
  execute as @e[distance=..5,tag=energy.cable,type=item_display] run data modify entity @s CustomNameVisible set value 1b
  execute as @e[distance=5..,tag=energy.cable,type=item_display] run data modify entity @s CustomNameVisible set value 0b
  ```

  </details>

- `@function cable:v0.1/util/get_direction`

  <details>

  ```mcfunction
  #> cable:v0.1/util/get_direction
  execute if data entity @s {Rotation:[-90.0f,0.0f]} run scoreboard players set @s cable.cirection 1
  execute if data entity @s {Rotation:[90.0f,0.0f]} run scoreboard players set @s cable.cirection -1
  execute if data entity @s {Rotation:[0.0f,-90.0f]} run scoreboard players set @s cable.cirection 2
  execute if data entity @s {Rotation:[0.0f,90.0f]} run scoreboard players set @s cable.cirection -2
  execute if data entity @s {Rotation:[0.0f,0.0f]} run scoreboard players set @s cable.cirection 3
  execute if data entity @s {Rotation:[180.0f,0.0f]} run scoreboard players set @s cable.cirection -3
  ```

  </details>

- `@function cable:v0.1/util/set_direction`

  <details>

  ```mcfunction
  #> cable:v0.1/util/set_direction
  execute if score @s cable.direction matches 1 run data merge entity @s {Rotation:[-90.0f,0.0f]}
  execute if score @s cable.direction matches -1 run data merge entity @s {Rotation:[90.0f,0.0f]}
  execute if score @s cable.direction matches 2 run data merge entity @s {Rotation:[0.0f,-90.0f]}
  execute if score @s cable.direction matches -2 run data merge entity @s {Rotation:[0.0f,90.0f]}
  execute if score @s cable.direction matches 3 run data merge entity @s {Rotation:[0.0f,0.0f]}
  execute if score @s cable.direction matches -3 run data merge entity @s {Rotation:[180.0f,0.0f]}
  ```

  </details>

- `@function cable:v0.1/util/error/place_no_input`

  <details>

  ```mcfunction
  #> cable:v0.1/util/error/place_no_input
  say Error: No cable registry entry found
  ```

  </details>

- `@function cable:v0.1/load/enumerate/set_version`

  <details>

  ```mcfunction
  #> cable:v0.1/load/enumerate/set_version
  scoreboard players set #cable.major load.status 0
  scoreboard players set #cable.minor load.status 1
  scoreboard players set #cable.set load.status 1
  ```

  </details>

- `@function cable:v0.1/load/enumerate/minor`

  <details>

  ```mcfunction
  #> cable:v0.1/load/enumerate/minor
  execute if score #cable.minor load.status matches ..1 unless score #cable.minor load.status matches 1 run function cable:v0.1/load/enumerate/set_version
  ```

  </details>

- `@function cable:v0.1/load/enumerate/major`

  <details>

  ```mcfunction
  #> cable:v0.1/load/enumerate/major
  execute if score #cable.major load.status matches ..0 unless score #cable.major load.status matches 0 run function cable:v0.1/load/enumerate/set_version
  execute unless score #cable.set load.status matches 1 if score #cable.major load.status matches ..0 if score #cable.major load.status matches 0 run function cable:v0.1/load/enumerate/minor
  ```

  </details>

- `@function cable:v0.1/load/enumerate`

  <details>

  ```mcfunction
  #> cable:v0.1/load/enumerate
  scoreboard players reset #cable.set load.status
  scoreboard players add #cable.major load.status 0
  scoreboard players add #cable.minor load.status 0
  function cable:v0.1/load/enumerate/major
  ```

  </details>

- `@function cable:v0.1/load/resolve`

  <details>

  ```mcfunction
  #> cable:v0.1/load/resolve
  schedule clear cable:v0.1/tick
  execute if score #cable.major load.status matches 0 if score #cable.minor load.status matches 1 run function cable:v0.1/load
  ```

  </details>

- `@function cable:v0.1/calls/cable/destroy`

  <details>

  ```mcfunction
  #> cable:v0.1/calls/cable/destroy
  execute if score #cable.major load.status matches 0 if score #cable.minor load.status matches 1 run function cable:v0.1/cable/destroy
  ```

  </details>

- `@function cable:v0.1/calls/cable/place`

  <details>

  ```mcfunction
  #> cable:v0.1/calls/cable/place
  execute if score #cable.major load.status matches 0 if score #cable.minor load.status matches 1 run function cable:v0.1/cable/place
  ```

  </details>

- `@function cable:v0.1/calls/cable/destroy_wire`

  <details>

  ```mcfunction
  #> cable:v0.1/calls/cable/destroy_wire
  execute if score #cable.major load.status matches 0 if score #cable.minor load.status matches 1 run function cable:v0.1/cable/destroy_wire
  ```

  </details>

- `@function cable:v0.1/calls/cable/m.place`

  <details>

  ```
  #> cable:v0.1/calls/cable/m.place
  execute if score #cable.major load.status matches 0 if score #cable.minor load.status matches 1 run function cable:v0.1/cable/m.place
  ```

  </details>

- `@item_modifier cable:item`

  <details>

  ```json
  {
    "function": "minecraft:set_lore",
    "entity": "this",
    "lore": [
      [
        "",
        {
          "text": "I",
          "color": "white",
          "font": "cable:gui",
          "italic": false
        },
        {
          "text": "cable",
          "color": "blue",
          "italic": false
        }
      ]
    ],
    "mode": "append"
  }
  ```

  </details>

- `@item_modifier cable:lore_footer`

  <details>

  ```json
  {
    "function": "minecraft:set_lore",
    "entity": "this",
    "lore": [
      [
        "",
        {
          "text": "I",
          "color": "white",
          "font": "cable:gui",
          "italic": false
        },
        {
          "text": "cable",
          "color": "blue",
          "italic": false
        }
      ]
    ],
    "mode": "append"
  }
  ```

  </details>

- `@loot_table(strip_final_newline) cable:wrench`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "minecraft:warped_fungus_on_a_stick",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "wrench"
                    },
                    "ctc": {
                      "id": "wrench",
                      "from": "9799ms:cable",
                      "traits": {
                        "item": 1
                      }
                    }
                  },
                  "minecraft:item_name": [{"translate":"item.cable.wrench"},{"text":"\uc001","font":"cable:icons"},{"text":"Select Cable to Debug"}],
                  "minecraft:item_model": "cable:wrench",
                  "minecraft:lore": []
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:redstone_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Redstone Cable",
                  "minecraft:item_model": "cable:redstone_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "redstone"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:item_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Item Cable",
                  "minecraft:item_model": "cable:item_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "item"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:energy_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Energy Cable",
                  "minecraft:item_model": "cable:energy_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "energy"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:enhanced_energy_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Enhanced Energy Cable",
                  "minecraft:item_model": "cable:enhanced_energy_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "enhanced_energy"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:ender_energy_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Ender Energy Cable",
                  "minecraft:item_model": "cable:ender_energy_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "ender_energy"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:fluid_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Fluid Cable",
                  "minecraft:item_model": "cable:fluid_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "fluid"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:pressurized_fluid_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Pressurized Fluid Cable",
                  "minecraft:item_model": "cable:pressurized_fluid_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "pressurized_fluid"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@loot_table cable:ender_fluid_cable`

  <details>

  ```json
  {
    "pools": [
      {
        "rolls": 1,
        "entries": [
          {
            "type": "minecraft:item",
            "name": "glow_item_frame",
            "functions": [
              {
                "function": "minecraft:set_components",
                "components": {
                  "minecraft:item_name": "Ender Fluid Cable",
                  "minecraft:item_model": "cable:ender_fluid_cable",
                  "minecraft:custom_data": {
                    "cable": {
                      "id": "cable",
                      "type": "ender_fluid"
                    }
                  },
                  "minecraft:entity_data": {
                    "id": "minecraft:glow_item_frame",
                    "Invulnerable": true,
                    "Silent": true,
                    "Tags": [
                      "cable.block"
                    ],
                    "ItemDropChance": 0,
                    "Invisible": true,
                    "Fixed": true
                  }
                }
              }
            ]
          }
        ]
      }
    ]
  }
  ```

  </details>

- `@predicate(strip_final_newline) cable:debug_goggles`

  <details>

  ```json
  {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "equipment": {
        "head": {
          "items": "minecraft:leather_helmet",
          "components": {
            "minecraft:custom_data": {
              "id": "energy_network_debug"
            }
          }
        }
      }
    }
  }
  ```

  </details>

- `@predicate cable:direction_ew`

  <details>

  ```json
  {
    "condition": "minecraft:any_of",
    "terms": [
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": 1
        }
      },
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": -1
        }
      }
    ]
  }
  ```

  </details>

- `@predicate cable:direction_sn`

  <details>

  ```json
  {
    "condition": "minecraft:any_of",
    "terms": [
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": 3
        }
      },
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": -3
        }
      }
    ]
  }
  ```

  </details>

- `@predicate cable:direction_ud`

  <details>

  ```json
  {
    "condition": "minecraft:any_of",
    "terms": [
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": 2
        }
      },
      {
        "condition": "minecraft:entity_scores",
        "entity": "this",
        "scores": {
          "cable.direction": -2
        }
      }
    ]
  }
  ```

  </details>

- `@predicate(strip_final_newline) cable:has_passenger`

  <details>

  ```json
  {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "passenger": {}
    }
  }
  ```

  </details>

- `@predicate(strip_final_newline) cable:has_vehicle`

  <details>

  ```json
  {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "vehicle": {}
    }
  }
  ```

  </details>

- `@predicate(strip_final_newline) cable:looking_at_connector`

  <details>

  ```json
  {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "type_specific": {
        "type": "minecraft:player",
        "looking_at": {
          "type": "item_frame",
          "nbt": "{Tags:['cable.connector']}"
        }
      }
    }
  }
  ```

  </details>

- `@predicate cable:opposite_direction`

  <details>

  ```json
  [
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.direction",
        "scale": -1
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.direction"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.direction"
        }
      }
    }
  ]
  ```

  </details>

- `@predicate(strip_final_newline) cable:periodic_10`

  <details>

  ```json
  {
    "condition": "minecraft:entity_properties",
    "entity": "this",
    "predicate": {
      "periodic_tick": 10
    }
  }
  ```

  </details>

- `@predicate cable:same_direction`

  <details>

  ```json
  [
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.direction"
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.direction"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.direction"
        }
      }
    }
  ]
  ```

  </details>

- `@predicate cable:same_network`

  <details>

  ```json
  [
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.network.high"
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.high"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.high"
        }
      }
    },
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.network.low"
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.low"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.low"
        }
      }
    }
  ]
  ```

  </details>

- `@predicate cable:same_process_queue`

  <details>

  ```json
  [
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.network.process_queue"
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.process_queue"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.network.process_queue"
        }
      }
    }
  ]
  ```

  </details>

- `@predicate cable:same_type`

  <details>

  ```json
  [
    {
      "condition": "minecraft:value_check",
      "value": {
        "type": "minecraft:score",
        "target": "this",
        "score": "cable.type"
      },
      "range": {
        "min": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.type"
        },
        "max": {
          "type": "minecraft:score",
          "target": {
            "type": "minecraft:fixed",
            "name": "#predicate"
          },
          "score": "cable.type"
        }
      }
    }
  ]
  ```

  </details>

- `@block_tag(strip_final_newline) cable:container`

  <details>

  ```json
  {
      "__comment":"All container of minecraft",
      "values": [

          "barrel",
          "blast_furnace",
          "brewing_stand",
          "campfire",
          "chest",
          "dispenser",
          "dropper",
          "furnace",
          "hopper",
          "lectern",
          "#shulker_boxes",
          "smoker",
          "trapped_chest",

        
          "chiseled_bookshelf",
          "composter",
          "decorated_pot",
          "jukebox",
        
          {"id":"#itemio:container","required":false},
        
          {"id": "#minecraft:wooden_shelves", "required": false},
          {"id":"#copper_chests","required":false},
          {"id":"crafter","required":false},

          {"id":"#c:barrels","required":false},
          {"id":"#c:chests/wooden","required":false},
          {"id":"#c:chests/trapped","required":false},
          {"id":"#c:player_workstations/furnaces","required":false}
      ]
  }
  ```

  </details>

- `@block_tag(strip_final_newline) cable:redstone_connectable`

  <details>

  ```json
  {
    "values": [
      "minecraft:piston",
      "minecraft:sticky_piston",
      "minecraft:redstone_lamp",
      "minecraft:note_block",
      "minecraft:dispenser",
      "minecraft:dropper",
      "minecraft:powered_rail",
      "minecraft:activator_rail",
      "minecraft:copper_bulb",
      "minecraft:exposed_copper_bulb",
      "minecraft:weathered_copper_bulb",
      "minecraft:oxidized_copper_bulb",
      "minecraft:waxed_copper_bulb",
      "minecraft:waxed_exposed_copper_bulb",
      "minecraft:waxed_weathered_copper_bulb",
      "minecraft:waxed_oxidized_copper_bulb",
      "minecraft:crafter",
      "#minecraft:doors",
      "#minecraft:trapdoors",
      "#minecraft:redstone_ores"
    ]
  }
  ```

  </details>

- `@block_tag(strip_final_newline) cable:replaceable`

  <details>

  ```json
  {
      "values": [
          "#minecraft:replaceable",
          "minecraft:moving_piston",
          "minecraft:air"
      ]
  }
  ```

  </details>

- `@function_tag(strip_final_newline) cable:events/cable/can_connect`

  <details>

  ```json
  {
      "values": [
          "cable:v0.1/cable/redstone/can_connect"
      ]
  }
  ```

  </details>

- `@function_tag cable:load/enumerate`

  <details>

  ```json
  {
    "values": [
      "cable:v0.1/load/enumerate"
    ]
  }
  ```

  </details>

- `@function_tag cable:load/resolve`

  <details>

  ```json
  {
    "values": [
      "cable:v0.1/load/resolve"
    ]
  }
  ```

  </details>

- `@function_tag cable:load`

  <details>

  ```json
  {
    "values": [
      {
        "id": "#cable:load/dependencies",
        "required": false
      },
      "#cable:load/enumerate",
      "#cable:load/resolve"
    ]
  }
  ```

  </details>

- `@function_tag cable:calls/cable/destroy`

  <details>

  ```json
  {
    "values": [
      "cable:v0.1/calls/cable/destroy"
    ]
  }
  ```

  </details>

- `@function_tag cable:calls/cable/place`

  <details>

  ```json
  {
    "values": [
      "cable:v0.1/calls/cable/place"
    ]
  }
  ```

  </details>

- `@function_tag cable:calls/cable/destroy_wire`

  <details>

  ```json
  {
    "values": [
      "cable:v0.1/calls/cable/destroy_wire"
    ]
  }
  ```

  </details>

- `@function_tag cable:calls/cable/m.place`

  <details>

  ```
  {
    "values": [
      "cable:v0.1/calls/cable/m.place"
    ]
  }
  ```

  </details>

- `@painting_variant cable:redstone_cable`

  <details>

  ```json
  {
    "asset_id": "cable:redstone_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Redstone Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:item_cable`

  <details>

  ```json
  {
    "asset_id": "cable:item_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Item Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:energy_cable`

  <details>

  ```json
  {
    "asset_id": "cable:energy_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Energy Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:enhanced_energy_cable`

  <details>

  ```json
  {
    "asset_id": "cable:enhanced_energy_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Enhanced Energy Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:ender_energy_cable`

  <details>

  ```json
  {
    "asset_id": "cable:ender_energy_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Ender Energy Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:fluid_cable`

  <details>

  ```json
  {
    "asset_id": "cable:fluid_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Fluid Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:pressurized_fluid_cable`

  <details>

  ```json
  {
    "asset_id": "cable:pressurized_fluid_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Pressurized Fluid Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

- `@painting_variant cable:ender_fluid_cable`

  <details>

  ```json
  {
    "asset_id": "cable:ender_fluid_cable",
    "width": 1,
    "height": 1,
    "title": {
      "translate": "Ender Fluid Cable",
      "color": "white",
      "italic": false
    }
  }
  ```

  </details>

### load

- `@function_tag load:load`

  <details>

  ```json
  {
    "values": [
      "#cable:load"
    ]
  }
  ```

  </details>

- `@function_tag load:_private/load`

  <details>

  ```json
  {
    "values": [
      "#load:_private/init",
      {
        "id": "#load:pre_load",
        "required": false
      },
      {
        "id": "#load:load",
        "required": false
      },
      {
        "id": "#load:post_load",
        "required": false
      }
    ]
  }
  ```

  </details>

- `@function_tag load:_private/init`

  <details>

  ```json
  {
    "values": [
      "load:_private/init"
    ]
  }
  ```

  </details>

- `@function load:_private/init`

  <details>

  ```mcfunction
  #> load:_private/init
  scoreboard objectives add load.status dummy
  scoreboard players reset * load.status
  ```

  </details>

### minecraft

- `@function_tag minecraft:load`

  <details>

  ```json
  {
    "values": [
      "#load:_private/load"
    ]
  }
  ```

  </details>

## Resource pack

- `@resource_pack pack.mcmeta`

  <details>

  ```json
  {
    "pack": {
      "min_format": [
        69,
        0
      ],
      "max_format": [
        69,
        0
      ],
      "description": ""
    },
    "overlays": {
      "entries": [
        {
          "directory": "Invisible Minecarts",
          "min_format": [
            69,
            0
          ],
          "max_format": [
            69,
            0
          ]
        },
        {
          "directory": "1.21.5",
          "min_format": 55,
          "max_format": 55,
          "formats": [
            55,
            55
          ]
        }
      ]
    }
  }
  ```

  </details>

### cable

- `@font cable:icons`

  <details>

  ```json
  {
    "providers": [
      {
        "type": "bitmap",
        "file": "cable:font/pack_icon.png",
        "ascent": 8,
        "height": 9,
        "chars": ["I"]
      },
      {
          "type": "space",
          "advances": {
            " ": 4,
            "\uf012": -12,
            "\uf050": -50,
            "\uf166": -166
          }
        },
      {
        "type": "bitmap",
        "file": "cable:gui/redstone_io.png",
        "ascent": 14,
        "height": 176.0,
        "chars": ["\uc002"]
      },
      {
        "type": "bitmap",
        "file": "cable:font/wrench.png",
        "ascent": -34,
        "height": 36,
        "chars": ["\uc003"]
      }
    ]
  }
  ```

  </details>

- `@item_model(strip_final_newline) cable:base/connector`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:model",
          "model": "cable:base/connector"
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/connector"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model(strip_final_newline) cable:goggles`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:model",
      "model": "cable:item/goggles"
    }
  }
  ```

  </details>

- `@item_model cable:wrench`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:model",
      "model": "cable:item/yeta_wrench"
    }
  }
  ```

  </details>

- `@item_model cable:redstone_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/redstone/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/redstone/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:active_redstone_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/active_redstone/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/active_redstone/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:item_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/item/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/item/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:energy_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/energy/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/energy/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:enhanced_energy_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/enhanced_energy/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/enhanced_energy/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:ender_energy_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/ender_energy/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/ender_energy/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:fluid_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/fluid/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/fluid/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:pressurized_fluid_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/pressurized_fluid/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/pressurized_fluid/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@item_model cable:ender_fluid_cable`

  <details>

  ```json
  {
    "model": {
      "type": "minecraft:composite",
      "models": [
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "on_true": {
            "type": "minecraft:empty"
          },
          "on_false": {
            "type": "minecraft:model",
            "model": "cable:block/ender_fluid/core",
            "tints": [
              {
                "type": "minecraft:custom_model_data",
                "default": 16777215
              }
            ]
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 1,
              "model": {
                "type": "minecraft:model",
                "model": "cable:block/ender_fluid/cable",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 2,
              "model": {
                "type": "minecraft:composite",
                "models": [
                  {
                    "type": "minecraft:model",
                    "model": "cable:base/connection"
                  },
                  {
                    "type": "minecraft:condition",
                    "property": "minecraft:custom_model_data",
                    "index": 3,
                    "on_true": {
                      "type": "minecraft:model",
                      "model": "cable:base/io/redstone",
                      "tints": [
                        {
                          "type": "minecraft:custom_model_data",
                          "index": 3,
                          "default": 16777215
                        }
                      ]
                    },
                    "on_false": {
                      "type": "minecraft:empty"
                    }
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:range_dispatch",
          "property": "minecraft:custom_model_data",
          "entries": [
            {
              "threshold": 3,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 4,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            },
            {
              "threshold": 5,
              "model": {
                "type": "minecraft:model",
                "model": "cable:base/io/in_out",
                "tints": [
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 1,
                    "default": 16777215
                  },
                  {
                    "type": "minecraft:custom_model_data",
                    "index": 2,
                    "default": 16777215
                  }
                ]
              }
            }
          ],
          "fallback": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 1,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/core"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        },
        {
          "type": "minecraft:condition",
          "property": "minecraft:custom_model_data",
          "index": 2,
          "on_true": {
            "type": "minecraft:model",
            "model": "cable:base/outline/cable"
          },
          "on_false": {
            "type": "minecraft:empty"
          }
        }
      ]
    }
  }
  ```

  </details>

- `@language(strip_final_newline) cable:en_us`

  <details>

  ```json
  {
      "block.cable.redstone.gui":"\uf012 \uc002\uf166%s",


      "item.cable.wrench":"Wrench",
      "item.cable.wrench.gui": "\uf012 \uc003"
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/cable`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"particle": "minecraft:block/debug",
  		"texture": "minecraft:block/debug"
  	},
  	"elements": [
  		{
  			"from": [7, 7, 0],
  			"to": [9, 9, 6.5],
  			"faces": {
  				"east": {"uv": [0, 0, 16, 13], "rotation": 270, "texture": "#texture", "tintindex": 0},
  				"west": {"uv": [0, 0, 16, 13], "rotation": 90, "texture": "#texture", "tintindex": 0},
  				"up": {"uv": [0, 0, 16, 13], "rotation": 180, "texture": "#texture", "tintindex": 0},
  				"down": {"uv": [0, 0, 16, 13], "texture": "#texture", "tintindex": 0}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/connection`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "cable:block/base/conduit_connector",
  		"particle": "cable:block/base/conduit_connector"
  	},
  	"elements": [
  		{
  			"from": [6.5, 6.5, 0],
  			"to": [9.5, 9.5, 4],
  			"faces": {
  				"east": {"uv": [13, 12, 16, 16], "rotation": 90, "texture": "#texture"},
  				"south": {"uv": [5.5, 0, 9, 3.5], "texture": "#texture"},
  				"west": {"uv": [13, 12, 16, 16], "rotation": 270, "texture": "#texture"},
  				"up": {"uv": [13, 12, 16, 16], "texture": "#texture"},
  				"down": {"uv": [13, 12, 16, 16], "rotation": 180, "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/connector`

  <details>

  ```json
  {
  	"format_version": "1.21.11",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"particle": "cable:block/base/conduit_connector",
  		"texture": "cable:block/base/conduit_connector"
  	},
  	"elements": [
  		{
  			"from": [2, 2, 8],
  			"to": [14, 14, 8.5],
  			"shade": false,
  			"faces": {
  				"north": {"uv": [0, 0, 5.5, 5.5], "texture": "#texture"},
  				"east": {"uv": [5, 0, 5.5, 5.5], "texture": "#texture"},
  				"south": {"uv": [0, 0, 5.5, 5.5], "texture": "#texture"},
  				"west": {"uv": [0, 0, 0.5, 5.5], "texture": "#texture"},
  				"up": {"uv": [0, 0, 5.5, 0.5], "texture": "#texture"},
  				"down": {"uv": [0, 5, 5.5, 5.5], "texture": "#texture"}
  			}
  		},
  		{
  			"from": [4, 4, 8.5],
  			"to": [12, 12, 9],
  			"shade": false,
  			"faces": {
  				"east": {"uv": [8.5, 0, 9, 3.5], "texture": "#texture"},
  				"south": {"uv": [5.5, 0, 9, 3.5], "texture": "#texture"},
  				"west": {"uv": [5.5, 0, 6, 3.5], "texture": "#texture"},
  				"up": {"uv": [5.5, 0, 9, 0.5], "texture": "#texture"},
  				"down": {"uv": [5.5, 3, 9, 3.5], "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"fixed": {
  			"rotation": [-180, 0, 0],
  			"scale": [2, 2, 2]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/core`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "minecraft:block/debug2",
  		"particle": "#texture"
  	},
  	"elements": [
  		{
  			"from": [6.5, 6.5, 6.5],
  			"to": [9.5, 9.5, 9.5],
  			"faces": {
  				"north": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0},
  				"east": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0},
  				"south": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0},
  				"west": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0},
  				"up": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0},
  				"down": {"uv": [0, 0, 16, 16], "texture": "#texture", "tintindex": 0}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0],
  			"scale": [2.5, 2.5, 2.5]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/io/in`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "cable:block/base/conduit_io",
  		"particle": "cable:block/base/conduit_io"
  	},
  	"elements": [
  		{
  			"from": [6.49, 6.49, 1.5],
  			"to": [9.51, 9.51, 3],
  			"faces": {
  				"east": {"uv": [0, 0, 16, 8], "rotation": 270, "texture": "#texture"},
  				"west": {"uv": [0, 0, 16, 8], "rotation": 90, "texture": "#texture"},
  				"up": {"uv": [0, 0, 16, 8], "rotation": 180, "texture": "#texture"},
  				"down": {"uv": [0, 0, 16, 8], "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/io/in_out`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "cable:block/base/conduit_io",
  		"particle": "cable:block/base/conduit_io"
  	},
  	"elements": [
  		{
  			"from": [6.49, 6.49, 1.5],
  			"to": [9.51, 9.51, 3],
  			"faces": {
  				"east": {"uv": [0, 8, 16, 16], "rotation": 90, "texture": "#texture"},
  				"west": {"uv": [0, 8, 16, 16], "rotation": 270, "texture": "#texture"},
  				"up": {"uv": [0, 8, 16, 16], "texture": "#texture"},
  				"down": {"uv": [0, 8, 16, 16], "rotation": 180, "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/io/out`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "cable:block/base/conduit_io",
  		"particle": "cable:block/base/conduit_io"
  	},
  	"elements": [
  		{
  			"from": [6.49, 6.49, 1.5],
  			"to": [9.51, 9.51, 3],
  			"faces": {
  				"east": {"uv": [0, 0, 16, 8], "rotation": 90, "texture": "#texture"},
  				"west": {"uv": [0, 0, 16, 8], "rotation": 270, "texture": "#texture"},
  				"up": {"uv": [0, 0, 16, 8], "texture": "#texture"},
  				"down": {"uv": [0, 0, 16, 8], "rotation": 180, "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model(strip_final_newline) cable:base/io/redstone`

  <details>

  ```json
  {
  	"format_version": "1.21.6",
  	"credit": "Made with Blockbench",
  	"textures": {
  		"texture": "cable:block/base/tintable",
  		"particle": "cable:block/base/tintable"
  	},
  	"elements": [
  		{
  			"from": [6.75, 6.75, 4],
  			"to": [9.25, 9.25, 5],
  			"rotation": {"angle": 0, "axis": "y", "origin": [-0.25, -0.25, 0]},
  			"faces": {
  				"north": {"uv": [0, 0, 16, 16], "texture": "#texture"},
  				"east": {"uv": [0, 0, 16, 16], "texture": "#texture"},
  				"south": {"uv": [0, 0, 16, 16], "texture": "#texture"},
  				"west": {"uv": [0, 0, 16, 16], "texture": "#texture"},
  				"up": {"uv": [0, 0, 16, 16], "texture": "#texture"},
  				"down": {"uv": [0, 0, 16, 16], "texture": "#texture"}
  			}
  		}
  	],
  	"display": {
  		"gui": {
  			"rotation": [30, 45, 0]
  		}
  	}
  }
  ```

  </details>

- `@model cable:base/outline/cable`

  <details>

  ```json
  {
    "parent": "wireframe:item/wireframe_white",
    "display": {
      "fixed": {
        "translation": [0, 0, -4.75],
        "scale": [0.1875, 0.1875, 0.40625]
      }
    }
  }
  ```

  </details>

- `@model cable:base/outline/connection`

  <details>

  ```json
  {
    "parent": "wireframe:item/wireframe_white",
    "display": {
      "fixed": {
        "translation": [0, 0, -2.5],
        "scale": [0.25, 0.25, 0.5625]
      }
    }
  }
  ```

  </details>

- `@model cable:base/outline/connector`

  <details>

  ```json
  {
    "parent": "wireframe:item/wireframe_white",
    "display": {
      "fixed": {
        "translation": [0, 0, -1],
        "scale": [1.5, 1.5, 0.125]
      }
    }
  }
  ```

  </details>

- `@model cable:base/outline/core`

  <details>

  ```json
  {
    "parent": "wireframe:item/wireframe_white",
    "display": {
      "fixed": {
        "scale": [0.1875, 0.1875, 0.1875]
      }
    }
  }
  ```

  </details>

- `@model cable:item/goggles`

  <details>

  ```json
  {
    "parent": "minecraft:item/handheld",
    "textures": {
      "layer0": "cable:item/goggles"
    }
  }
  ```

  </details>

- `@model cable:item/yeta_wrench`

  <details>

  ```json
  {
    "parent": "minecraft:item/handheld",
    "textures": {
      "layer0": "cable:item/yeta_wrench"
    }
  }
  ```

  </details>

- `@model cable:block/redstone/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/redstone_core"
    }
  }
  ```

  </details>

- `@model cable:block/redstone/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/redstone_cable"
    }
  }
  ```

  </details>

- `@model cable:block/active_redstone/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/active_redstone_core"
    }
  }
  ```

  </details>

- `@model cable:block/active_redstone/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/active_redstone_cable"
    }
  }
  ```

  </details>

- `@model cable:block/item/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/item_core"
    }
  }
  ```

  </details>

- `@model cable:block/item/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/item_cable"
    }
  }
  ```

  </details>

- `@model cable:block/energy/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/energy_core"
    }
  }
  ```

  </details>

- `@model cable:block/energy/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/energy_cable"
    }
  }
  ```

  </details>

- `@model cable:block/enhanced_energy/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/enhanced_energy_core"
    }
  }
  ```

  </details>

- `@model cable:block/enhanced_energy/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/enhanced_energy_cable"
    }
  }
  ```

  </details>

- `@model cable:block/ender_energy/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/ender_energy_core"
    }
  }
  ```

  </details>

- `@model cable:block/ender_energy/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/ender_energy_cable"
    }
  }
  ```

  </details>

- `@model cable:block/fluid/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/fluid_core"
    }
  }
  ```

  </details>

- `@model cable:block/fluid/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/fluid_cable"
    }
  }
  ```

  </details>

- `@model cable:block/pressurized_fluid/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/pressurized_fluid_core"
    }
  }
  ```

  </details>

- `@model cable:block/pressurized_fluid/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/pressurized_fluid_cable"
    }
  }
  ```

  </details>

- `@model cable:block/ender_fluid/core`

  <details>

  ```json
  {
    "parent": "cable:base/core",
    "textures": {
      "texture": "cable:block/ender_fluid_core"
    }
  }
  ```

  </details>

- `@model cable:block/ender_fluid/cable`

  <details>

  ```json
  {
    "parent": "cable:base/cable",
    "textures": {
      "texture": "cable:block/ender_fluid_cable"
    }
  }
  ```

  </details>

- `@texture cable:block/active_redstone_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAYAAAATffeWAAACiElEQVR4nOxXzY7iMAx20ggkJISYPXJlL7zgXvd99oF4Ak6jXYkLEj9tt07zpW7itEi9zGE8iqaE9PPnL44d3H6/b2mBOVpobrvd0hJbzoAWmgfYbDajSWMMte28trfbjdx6vabVakWHw0FdZK31gGx1Xcf5y+XiP49CYDDNGIBH0zT+8/1+H4cAdF6w2+38YvbMYeAl2PV6HTFxFOhp3qAD5jRzpvOUArB3MHg+n/6ZLWUTGIwBQBteq6qK89rOuJQYGJzP59H86XSi1+ulMFBM8wSRMwAsBkVe9KNu6PfnJ606Jo7D6Maf54v+VjYLxbUJakntogbUNvFFiGabYaHBCN+nW5ppgDiNYGQBbI3CIFi/QM8+NhaxbvsdwtayWVJM04GBtXkrPSCB2AuyvcLovCLF5Vmwmvd4BsQcmxaalS9ioaSKpyju3C6AAVhYAaJZBMBLJbFkDlhxgtU8gJht8F5RuSY4zYNkgRBkoRlXpMR4u6pGr8j6WRBfRuE6T3wKo2eEpqiZ5YFPWWW/S30iywOIqAFMihgRuaC2vXCt/yM/rLXTDCST6LUbTVLa08KiwmrxIjeKDGQPlF8wVB3if6siJQEROlep0GS9EYnUixjyQ5zS2YrkY6UhgV4BgIFkCg8MEmG4+9QTd4vsLBhj1UXxmcZbmTEwhQTRioi+C2aq3gyGlp8xwAMyjBX+14H++vgYLfzZNRUTLh2TmeicK+e9xqBvrlWM7fF4eA/H4zEuknUw0yDtzrGohISR5Vyz2J3RG/k/4uT7kTyFcDB7GqXipXvBwCCYvMLIK54Eees0MpBR7o6zDEqNAwwQWhEgtVFpm9DgvTyesC/yi+Ub4BuAFtp/AAAA//9WRzsRAAAABklEQVQDAMabg5YdwHBcAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:block/active_redstone_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTM6Mjk6MjAAENcm7gAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST5jb20ucGl4ZWxtYXRvcnRlYW0ucGl4ZWxtYXRvci5kb2N1bWVudC1wcm8tc2lkZWNhci5iaW5hcnk8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+OEMyMEI2MkMtNjJDOC00QjdDLUFBRjMtRjlBRkQ1MThFM0REPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjhDMjBCNjJDPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjI5OjM5KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzoyOToyMCswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFhEaW1lbnNpb24+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgrORjt9AAAC0UlEQVQ4EU3VzU5bQQwF4Pzc/IAEglW77qILnq1dtM/RPiBIVbtrWbFAEHKTm/TznHAVKzIej3187Jk7TO/u7ubz+WQyGYZhtVoxptNp9OFwiH08HhnRtgib3m63s9nMltyOdXl5abHZbPb7vQiS/JZSuHGKzNZYYLFYrNdrAc/Pz3YL0l5QJMeT/GjO8+XoRESiXT11u93u5eVFKS7UUo0GFy1NKHuEY8R+ayLXsru4uOj73gLJTx8+3tzcdF0nOSIiEJXaRCThfHp6+vXvrzGJXC6XlSMgabe3tzX795EjTCptGASoK9/SqIe+f3h4AFT+NtOuNt6FPVssPv/8gWZnWE5Hjclk3wwYA/tw2Gy3f759H5kGq4BGVLbp6XG1XC6mU79CwQgX94M+Hnuk2oGoLp6koTr+LGjT0a1kXPRcoa1r+Rrgca9ytcaTVYtUblDSHFfh5rBbQWC4oCY/kVWmJYdRUE5A/lgHi20xGFZrJP5yNnaBqO+gxeeKtNXUTEvOG8wlM2CinQLBtE0duzm7ORv46bjZAmrhjtIuJ0NcA6kB1dG8L3lrQ9L7gJtZSm7I1miCyLtrB1sDBuHX0mzDLZu3Nk5HlkRZNWxyotCSLXU38lJEGtyKgeD427VUDiANi5xu9jmQQUjChyGUXfUbBWmn3faVKFkBTWrYAY7evL66eLqTnG4tbVUlycej++ly74fB15PyQTgxwg0uF+Ntu60aLIhtRnVMcHTUbsa276FATwEshdeMGt/T8HZvb7+/fIW4Wq/pnGZiFl1ndrjNu+7Y9wGi82EXUOhweRnu7+/DmeZXgx7hxDSi1ezj46NcxcRYTr0btK/MC+lzzZ5twrbFoEf/uZ03G7QLWMO+vr6mvbsevGQmOS2zwyJYI3pirq6uhCExy9iQH+PG/IRCGenwEMsxJl2L6bhwyUb+HaUmapwhGH0Olxgd5L0X8B9h64dRb9F1hgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/base/conduit_box`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsIAAA7CARUoSoAAAADmSURBVHhe7ZtLCoNAAMW0G72Q9997Il1ZtVkV/AxU0OYFJCO4kDDIKGPddd1Uiej7ntGHNUDTtpzuMw7D6lPXz1nHseD6q+F+vgO8sJYEwFoSAGtJAKwlAbCWNcCywjtz/CPXzYAa34WN+1kDLGv1w6O5wXr+AvIMwFo8ATa+emQGYC0JgLUkANaSAPiYu63tS9l7FzCTAFhLAmAtCYC1JADWog+g3yKTGVCyR6iI7BF6BgmAtSQA1pIAWEsCYC0JgH/Pk/YImUkArCUBsJYEwFoSAGvRB8ivs9MMYyV5BmAt8gBV9QZmI0pnjTn/+AAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/base/conduit_connector`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsIAAA7CARUoSoAAAABuSURBVFhHYzQ1Nf3PQAVw+vRpRiiTJMAEItg5OAhiGMAnRw4AO2AgwagDhp4Dfv74gYEpAeBsSExKBllEblbDB0bTANgB6HGKDY+CUTAKRsEoGAXDFlC9gYEL2NjaYu1/jDZIRh0w6oABdgADAwCITTbZHUW1xAAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/base/conduit_io`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAKZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAABgAAAAAQAAAGAAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAADoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAAL1/HdQAAAAJcEhZcwAADsQAAA7EAZUrDhsAAAjwaVRYdFhNTDpjb20uYWRvYmUueG1wAAAAAAA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJYTVAgQ29yZSA2LjAuMCI+CiAgIDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CiAgICAgIDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiCiAgICAgICAgICAgIHhtbG5zOlBpeGVsbWF0b3JUZWFtPSJodHRwOi8vd3d3LnBpeGVsbWF0b3IuY29tL3htcC8xLjAvbmFtZXNwYWNlIgogICAgICAgICAgICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOnRpZmY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vdGlmZi8xLjAvIgogICAgICAgICAgICB4bWxuczpleGlmPSJodHRwOi8vbnMuYWRvYmUuY29tL2V4aWYvMS4wLyI+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+MzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhckRhdGFWZXJzaW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPnBpeGVsbWF0b3JQcm88L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJBcHBsaWNhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJEZXZpY2U+TWFjQm9va1BybzE4LDE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJEZXZpY2U+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyT1M+MTUuNy4xPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyT1M+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD5GYWxzZTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhckVuYWJsZWQ+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPmNvbS5waXhlbG1hdG9ydGVhbS5waXhlbG1hdG9yLmRvY3VtZW50LXByby1zaWRlY2FyLmJpbmFyeTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclByb2Nlc3NJRD4xNzA2MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclByb2Nlc3NJRD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJWZXJzaW9uPjI8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJWZXJzaW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPmQwODc5ZDQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJCdWlsZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJJZGVudGlmaWVyPkFDNjMyMEI1LTFBNTgtNEU1NC1BNEU3LUI0MUI5NTNDNEE3RTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyTG9jYXRpb24+aUNsb3VkPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyTG9jYXRpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyVmVyc2lvbj4zLjYuMTg8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclNob3J0SGFzaD5BQzYzMjBCNTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclNob3J0SGFzaD4KICAgICAgICAgPHhtcDpDcmVhdG9yVG9vbD5QaXhlbG1hdG9yIFBybyAzLjYuMTg8L3htcDpDcmVhdG9yVG9vbD4KICAgICAgICAgPHhtcDpNZXRhZGF0YURhdGU+MjAyNS0xMi0wNlQxNDoyNDo1NCswMTowMDwveG1wOk1ldGFkYXRhRGF0ZT4KICAgICAgICAgPHRpZmY6UmVzb2x1dGlvblVuaXQ+MjwvdGlmZjpSZXNvbHV0aW9uVW5pdD4KICAgICAgICAgPHRpZmY6T3JpZW50YXRpb24+MTwvdGlmZjpPcmllbnRhdGlvbj4KICAgICAgICAgPHRpZmY6WVJlc29sdXRpb24+OTYwMDAwLzEwMDAwPC90aWZmOllSZXNvbHV0aW9uPgogICAgICAgICA8dGlmZjpYUmVzb2x1dGlvbj45NjAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOkNvbG9yU3BhY2U+MTwvZXhpZjpDb2xvclNwYWNlPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MjQ8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4K0nSt6QAAALdJREFUSA3tlFEKgDAMQ1W8/5XVDSIlpGsmCH64n2qbvrhOXRdzHdeK0vVa8T67tkQMB8wxKQ0yuGsyNKjgjklq4MIrk9QAjYhs6My/9W4AvBV/g3Kyr4+ofILPC+R34L7zju7xGTC8jVLlHhkoEM6Ka9MGDAA4xqiZMoiNEaiuod1VMcvxDw4Q6Lne8t2AhWhA5LoCQcuxj2imYUbbzO4zcBodjdwBkiPAqIZ+Fe8doKhAKgd9FU+4J0wqt302+QAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/base/tintable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAHr8AAB6/AUP9bJoAAAAgSURBVDhPY/wPBAwUACYoTTYYNWDUABAYNWDgDWBgAABrygQclUTopgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/ender_energy_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAAeFBMVEUREREeHh4lJiYpKyMqLCQrLSUsLS0uMCiXsyyXtS6Xti9QUUlRUkpSU0uWsCk5Ojo7PDw6Ozs4OTkwMiorLCwvMSk8PT1PUEhNTkY+Pz+VryhLTERMTUVUVU0xMytOT0dTVEyXsSo9Pj4yNCxVVk4rKytWV08AAADtYNmxAAAAKHRSTlP///////////////////////////////////////////////////8AvqouGAAAAWdJREFUeJzVktl6hCAMRqeb0gESghWt28DY5f3fsCxG2+lFr5sLL85Hwskvp9OfdXdTv8H9TUXwUOrxKX4iqKpapHo+n4WoqyoDmUppyQAkGrLWSiigAUUvsUhDk0EL2iVgFLRbi6JOiJ6OFu0iUK/cUoM2vRCd4RPtIO0oxIRq2GYMyk4RWDlsJ2Cm2NIj37KATuDiPCybuiozWL0VCuOJ0SrRsoe5xBnm8PB5l92jDt4kgDIwmAmNMztowRtC54iHLqAQrUHjRfFYgo5xWdzFmjDnoe64dr7mCPdryy4d7nkEaaPpxfK2TdA0pUx5xhp8AqObh5VB2naiHQiPuWWGApYCJmSxBd5cn8GmnsT6nPrx96kAFgNpk/ohxkCHJPZerRHEF0M0hzWDZvBokRB39eHDpMSQxVZQOTFTWqo8IyfGoBH+56OLIKl3316hp5JYaNk0r48MmpDBuJkWkJcr4POm/jH4AhZLSOqDhi3zAAAAHXRFWHRTb2Z0d2FyZQBAbHVuYXBhaW50L3BuZy1jb2RlY/VDGR4AAAAASUVORK5CYII=)

  </details>

- `@texture cable:block/ender_energy_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTI6NTY6MTEAWHUOAQAAAAlwSFlzAAAuIwAALiMBeKU/dgAACWtpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPlRydWU8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPmNvbS5waXhlbG1hdG9ydGVhbS5waXhlbG1hdG9yLmRvY3VtZW50LXByby1zaWRlY2FyLmJpbmFyeTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQcm9jZXNzSUQ+MTcwNjI8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQcm9jZXNzSUQ+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyVmVyc2lvbj4yPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVmVyc2lvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJCdWlsZD5kMDg3OWQ0PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj5EREMxQTJGQS01MTg5LTQ4OTctODEwOC1FQUI1RDFDNTk4MDE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJJZGVudGlmaWVyPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhckxvY2F0aW9uPmlDbG91ZDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhckxvY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhckJhc2VGaWxlbmFtZT5lbmRlcl9lbmVyZ3lfY29yZTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhckJhc2VGaWxlbmFtZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPkREQzFBMkZBPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEyOjU3OjA4KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMjo1NjoxMSswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFhEaW1lbnNpb24+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgqzo+wYAAAC0UlEQVQ4EbWVS27UQBCG3dM9tocE2EcCBJu5CEi8bsACJAjsyALBHSALxA4JECy4ARIgOAtIvC6QjccZt81X/fc0kwNQUSrVVX+92x23XC5ns9kwDFVVLRaLaZqcc8gSMI3jWI4IhQB0XVfXNYAYYwB6cBiqKjx/dAxhBkosCARWjkUpoRzn8/nDZ76q/IvHLicEHUIAgb9yCo2siopSAPGCwepozf44d2rHUycyZu89/opbupMJpPTwFdRNVEArAef1eg2IOm896QhBw6DxR0APoUTDEWdpxN8/bfvVCn3btqFkQCD25zcXABGF8cNRclR3REHDUeGu3v1xwlexsUHg4EdHnRw0czRgNDlkGibY7um21IsSYl95R4SnRzhdSakcZgYXbHA4oOx7uxAiwyeyQJBGm0JPJMfELz0gN7UpwFy79xP+8dU5ZSaueW58T1QkG0nNdZqaNu/uxv3f7IWVfH13yXJUVpdI5cDt7kDS0rYGrEYo8/r+L0x0y06tltSXnEsT8rWtSSpc55sP/hCX3VEmPp9en2eHpGwax4xS9n+3F9/cGlBtCkERP7zcQ0BJRO4dyyZoqYtAqgAuX/vW5FBi0ckQXeMt/+Xb34bBLi0z0oCmcTY5u6hYt30D/pAMhDdbWjb3mSqwUMiXtxfHaPkGLrfjJ5ez7WvDxlml5oipI2rxvuaiE4IEQxzsQiABTR+NrlXxzZ+IulNdVMSiaIQjRBVwUo3pZkWmudnPJqyN0oadclTsCIE8QPveQlj+9JfA7MKqpvw03e3vAwhHa00ueBGYiZw9s0DmAxZCxQuGBgFCqdaKr7UGYUPFjK7c+S6N5oVSK0OAMBFC5cTI22LPi3ztYVMhO7uBZwUtNnwkYMob2OhTQGMAuF/rYwNYa0DLm73quhw+VQUCq3zgJfk25uDw/73Z5GmaRvn1faGhitKdTKpLnH9HIPVm/wXv6lUq6D/fJwAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/ender_fluid_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUAAAABACAYAAABr564eAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAFAoAMABAAAAAEAAABAAAAAADIwMjU6MTI6MTIgMDE6MjY6NDcACMogLQAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQlpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST5jb20ucGl4ZWxtYXRvcnRlYW0ucGl4ZWxtYXRvci5kb2N1bWVudC1wcm8tc2lkZWNhci5iaW5hcnk8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjQwMjc3PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+ODYzMDE4MEMtNjYyQS00NDIzLUEzRUMtQzY5MjQ1MzE0NkM3PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjg2MzAxODBDPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTEyVDAxOjMxOjA3KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0xMlQwMToyNjo0NyswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj42NDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4zMjA8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KFb/IegAAGThJREFUeAHtnc9vXEdyx3tIavhD/CH+EpekpYUsyVhb0gLOOrk4yDFIDskl5/wzOeaWcy7BIsghQJAskoV3N9gkcGAgQOTdLEwntlYSDUmURPOXOJJIakTO5Putfv3m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)

  </details>

- `@texture cable:block/ender_fluid_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTM6MDY6NTIA6DZkMwAAAAlwSFlzAAAuIwAALiMBeKU/dgAACTBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+Y29tLnBpeGVsbWF0b3J0ZWFtLnBpeGVsbWF0b3IuZG9jdW1lbnQtcHJvLXNpZGVjYXIuYmluYXJ5PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+RjlFQzJENkYtNzQwQS00Nzc1LTg2OUUtN0Y5MkE2Rjg2QzBDPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPkY5RUMyRDZGPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjA4OjM5KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzowNjo1MjwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOkNvbG9yU3BhY2U+MTwvZXhpZjpDb2xvclNwYWNlPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MjQ8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KFrzGAQAAAwhJREFUSA1tlT2OFDEQhd09PT+s4AZcYGYkko24AuIEJHADDsMFkAiJSQiJl3hvQA4BO/sz3dT3ys9rofXIbdffq1dlT/dwOByW1WpVGOfzuWy3W+2HYWjrPM/F8rIs2nuVUzyQGbe3t2UcR/mANyG8/Phexl+fvpSHhwc5/w+AA0nQM4mzT09gvV6X9bu35ffN37L5+j0TCD0egJspAB4AGBCdEz21wvomwKmfzgz7/X6ZpklsMF5cXBQzMrBXJ0fuE0mIB/bT6SRgqmNMu92u3N/fS2B/uLy8nksYqwOGue4dFE0K7SCWgI4xVU1or69+7u/u7iTTrkmGAGBleohjBXaCIWRBy28pqyHayF5yJArR58LKbI22wgm8GlxFWRkr/LNRuR9XcXNCz1nRQieaiDH7vgJaJKewtyQAxMzuxiFW9jAndqx8jUe8EkRMy0qwAbPTWB8HOpLQd0bl3eS+E0pq1o9ZszySCKL2UeUHIH4ikaeR2ZSKR/5PfMVJNvLoh9gbPAxYmcn3cZ/MQ64H4aohwBmwkmgigVh5nbP3mTai46b4JiwRBP+R2xO7EFtiaULR46mC/h+KAiaQWuZzPNlwJrmtsHl7aknV1G5UeuYT4qqgV571LyUsEeLSxc41+FAdkRY8xwjhXwIow1dVZwBzj3iF5bbTVbLS619u5ydWEjB5D6lF9nGr9J4BHNTaG1I2CjAERL9OL6A8P7btoBHIyIuOVWC0iSRckXNMboXElkYEkOp5A9OywRwsht5FCFa0slRFZctflVGDqqCTAQZXt844+AiLh2cGNiIWo5AMB8zHLWBAYrL36LFIpgpsZF2iLQN11woIHqICg3CFM0mFpoO6aURTZHaDlWQD32Rlio8OXzS+CRj6gV2HH0pfBtsNZNnfZPz4zuhl9/zDG73b/3z+po+2ExisB2HPsI9YVh167JvXr+KaBuEfV2Xkvq5DeLF7liWFA049qNn3wOw9SNL7AD4GDwgOx+NxYWOHzWajOCdhxWbG+DIsS6gyvnyT+8r/Afy46XSheD2MAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:block/energy_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAAeFBMVEUREREeHh4lJiYvJycwKCgxKSksLS00LCz/Zmb/aGj/aWlWTU1XTk5YT0/+Y2M5Ojo7PDw6Ozs4OTk2Li4rLCw1LS08PT1VTExTSko+Pz/9YmJRSEhSSUlaUVE3Ly9US0tZUFD/ZGQ9Pj44MDBbUlIrKytcU1MAAABSar4+AAAAKHRSTlP///////////////////////////////////////////////////8AvqouGAAAAWdJREFUeJzVktl6hCAMRqeb0gESghWt28DY5f3fsCxG2+lFr5sLL85Hwskvp9OfdXdTv8H9TUXwUOrxKX4iqKpapHo+n4WoqyoDmUppyQAkGrLWSiigAUUvsUhDk0EL2iVgFLRbi6JOiJ6OFu0iUK/cUoM2vRCd4RPtIO0oxIRq2GYMyk4RWDlsJ2Cm2NIj37KATuDiPCybuiozWL0VCuOJ0SrRsoe5xBnm8PB5l92jDt4kgDIwmAmNMztowRtC54iHLqAQrUHjRfFYgo5xWdzFmjDnoe64dr7mCPdryy4d7nkEaaPpxfK2TdA0pUx5xhp8AqObh5VB2naiHQiPuWWGApYCJmSxBd5cn8GmnsT6nPrx96kAFgNpk/ohxkCHJPZerRHEF0M0hzWDZvBokRB39eHDpMSQxVZQOTFTWqo8IyfGoBH+56OLIKl3316hp5JYaNk0r48MmpDBuJkWkJcr4POm/jH4AhZLSOqDhi3zAAAAHXRFWHRTb2Z0d2FyZQBAbHVuYXBhaW50L3BuZy1jb2RlY/VDGR4AAAAASUVORK5CYII=)

  </details>

- `@texture cable:block/energy_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTI6NTY6MTEAWHUOAQAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+Y29tLnBpeGVsbWF0b3J0ZWFtLnBpeGVsbWF0b3IuZG9jdW1lbnQtcHJvLXNpZGVjYXIuYmluYXJ5PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+MkQyQUYxQUItRjZBRi00MEU3LThBNzYtNDlBODk1OUEzMjE2PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJTaG9ydEhhc2g+MkQyQUYxQUI8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJTaG9ydEhhc2g+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyVmVyc2lvbj4zLjYuMTg8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEyOjU5OjIzKzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMjo1NjoxMSswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFhEaW1lbnNpb24+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgqBOEqHAAAC7ElEQVQ4EbWVwU7bQBCG17GdOORC1QMICRBwoOqNO/QR0ktfE4nkDSLu3NobEhES4tRDKzfBjmO+md/Zug/QESyzM//M/DO7XpLLy8vBYLDZbEII4/G4bdskSdCl4Nput3GLEgXAarUaDocAmqbJgP64ucH9abGoqgo3OrkQEHjZRqOUuM3z/Pv1NYDP9/ddQTZZloEgHh0RGkWM3NbRRBcsYsxCa3Lsj0bwRMc9SNN2u1XeZDBAxy4XKWRnXa/Xv+oaBrSSEVzXNSB4Lq6uIBaYFx3x0zQeHkKa2ha7N96tIXx5ePi92TCgoiiyWMHYDofflkuCNX5WtRDn3R/Z7clJPzZTTXgiVGb9WZYK0MzNzggch07DzH9/b88I7ozYLRGJJeHtzRQ/Kf4KZ+62LZIk9TIYS6VwgOFdOkaQt8r8cnA6FHCuTxiQy+z0FMuU3j3SBuei2H8ZuY9OLFfbTvJcoPnZWVitwno9fX0lieK1ig6r3R2k8zWNBqxGyDKHBZH8FMX06QkYfSmYC9aPtVPrsuz+aD87P7fjryq7ECF8XS6pQeQky8hltXu3F0DXGsU1YxQlnD4+ohB8d3ERynJ2fGxJd7wskTOAByHA7FtTgF1f10GsQ5j4Db47PAxc16KIA6qxqwkY7WLJlfGLkEtFLK8fNpY5LLy76csLW8SagsOuKWrHWBs2waw2LGX0jmYHB0xn+vxMPC67OwA8C0fDndLtjbHdJ2Jo52m82rYKgZM2DiH88S+OUlsStW3DRNSaFzC8F7Zha8PrBCNKAeX623dsJE3AMk9jDX2fLh+qe7pYe9iUhRCLSlOeyo8TBp3wOAAFIfKCWVIXG2We92OtNaTDNc3t0ZGdHUl9XlbWj8wUBDtefWs1B/g31h420kPkA49KUZARJyFSGJxetWj3fLZg4WEr/eCsNbLEN5vnDjcglQJjLXiMjPL2MYr9P282dUajkepzdtDBAjVI6dbJhUV2Vv4dgdSb/Q6nfjb61dzgRgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/enhanced_energy_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAAeFBMVEUREREeHh4lJiYvKCMwKSQxKiUsLS00LSj/dB//diH/dyJWTklXT0pYUEv+cRw5Ojo7PDw6Ozs4OTk2LyorLCw1Lik8PT1VTUhTS0Y+Pz/9cBtRSURSSkVaUk03MCtUTEdZUUz/ch09Pj44MSxbU04rKytcVE8AAABNUUd5AAAAKHRSTlP///////////////////////////////////////////////////8AvqouGAAAAWdJREFUeJzVktl6hCAMRqeb0gESghWt28DY5f3fsCxG2+lFr5sLL85Hwskvp9OfdXdTv8H9TUXwUOrxKX4iqKpapHo+n4WoqyoDmUppyQAkGrLWSiigAUUvsUhDk0EL2iVgFLRbi6JOiJ6OFu0iUK/cUoM2vRCd4RPtIO0oxIRq2GYMyk4RWDlsJ2Cm2NIj37KATuDiPCybuiozWL0VCuOJ0SrRsoe5xBnm8PB5l92jDt4kgDIwmAmNMztowRtC54iHLqAQrUHjRfFYgo5xWdzFmjDnoe64dr7mCPdryy4d7nkEaaPpxfK2TdA0pUx5xhp8AqObh5VB2naiHQiPuWWGApYCJmSxBd5cn8GmnsT6nPrx96kAFgNpk/ohxkCHJPZerRHEF0M0hzWDZvBokRB39eHDpMSQxVZQOTFTWqo8IyfGoBH+56OLIKl3316hp5JYaNk0r48MmpDBuJkWkJcr4POm/jH4AhZLSOqDhi3zAAAAHXRFWHRTb2Z0d2FyZQBAbHVuYXBhaW50L3BuZy1jb2RlY/VDGR4AAAAASUVORK5CYII=)

  </details>

- `@texture cable:block/enhanced_energy_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTI6NTY6MTEAWHUOAQAAAAlwSFlzAAAuIwAALiMBeKU/dgAACTBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+Y29tLnBpeGVsbWF0b3J0ZWFtLnBpeGVsbWF0b3IuZG9jdW1lbnQtcHJvLXNpZGVjYXIuYmluYXJ5PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+OTEzNjg0RjYtMzE3My00QTcxLUJEODUtOEIyODEyMjY2RjY0PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjkxMzY4NEY2PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjA0OjMwKzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMjo1NjoxMTwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOkNvbG9yU3BhY2U+MTwvZXhpZjpDb2xvclNwYWNlPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MjQ8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4KrBMYsgAAAtFJREFUOBG1lTlvFEEQhefomZ1lCIyQyEGCXS5BSkyGEyRA8A9B4goQGTEpSOBFgCB3QmBY72qu5qt+M+11RETJblfX8epVdU87XSwWWZZ1XZckyXw+996naYouBdcwDHGLEoWAzWZTliUBfd87Qlf7x7iXb6qmaXCjg4UQgZdtNEqJ26IoDu6tCbj29sxYkI1zjgjy0RFFo4hRsI000RUWY8xCa3LsVTk80XFnee6HQbhplqFjlwsI2Vm32+1R42FAK47ktm0Jgue7O4d5ntMw0TSFEtITjFjYkiyL1rvvL/xut9irqnKxAgrYj77fJAgUxs+KkW2c9+7Inl/+dCpX2JRCrAvvf/3ZKEEzx0KMJodOw8x/r64iX4yIs6BJurY1NZwUf1XD3N5XmadBEjCu23Fku7kGhEA+4NoCgKHwE/TamYGYF1c+sz74el2VwbXMKfcUI/koaqne12WuAq+WK86FI3ny83ZgejJythK7O4iwaVsDViOgvFwc4KJbztS4hL6UGZtQrp2atLhq//rqF3A5O2iS8/DbDc6QknWRMqNQ/eT2kju2RqhmjCLE+6slCgRB5OJx2IBGXgCJASsphNm3pgSur3Q62fq0Djf46cUPXWeXlhlpQHYGgbNhTblgOX4RsFTEsMJhJ0kOCzwQefzjlmhaU3CY6FA75tqwSRbKaA0dwSXPS110cu3uhDthc6JIkN3c8ROhoHhamEWmNCIWxx1bT6kh3KyeCUznE8jZiUPFhh1qJLxOKFQidG1fsR27TpBY5ocXOqBAfPf7IJCttaYUsgBmIufPztH5gBWhxhWGBQXBaE/NTq61hshEqWeXPsqieZFZ8M40DQqCCwTRGXp7W5ARLr7Z5+aOZwUrPnKkkKdXLdoDoC1YuF/r3t5Ya40K05udHTUb3ASFSv9+swlb7f+/Nxsus9lMnPV9qR0ox3nJElf+HRGpN/sv3B1QA6TysFsAAAAASUVORK5CYII=)

  </details>

- `@texture cable:block/fluid_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAA4VBMVEU1OTpAREVESEk/R0lCSElFSUpmdXlfb3NXaW1vfoJ0gYZ0goZyf4RygIRyf4N2hIhldHhtfIBebnJsen9zgIRzgIVxfoJwfoJwfYJ1g4d1goZsen5kcnZdbHBqeH1wfYFvfIBpd3xpdntte39ufIB0gYVndXlue39LWVxNXF9LWl1JWFtMWl1MW15KWVxpdnoAAABodnpse39vfYFndnpwfoJxf4NmZmZreX12goZ5hYl5hIh4hIh3hIh3g4d4g4d2g4dmdHhzgYVvfYFxfoJKWFtJV1pLWlxIV1pebXJyfoKHvUOYAAAAS3RSTlP///////////////////////////////////////////////////////////////8A//////7/Bf///////////////v7///////+ml11sAAABQElEQVR4nNXRXVuCMBQHcCqCWYZgaxSoW2xgahm0TDSz99fv/4FiCo6ti7rtXPH8nrPzP2yG8WttafUH2N4xzd2yzOLTsGzQ2NtvHjSdVqsBbMtwbeBV4AHbNdw2OIRHCPnHJ0EI2q7R6YIexoRgDJ1T0O0IiChlDEKEogrCAuK4BnpHImb0+4QkEs4Gw5EC54OLsYRLxtKiMM6qoVdUgJKiQkZXR3x+XYLF/BUwawMTAZMNJP7NqmMTm8VxOp3WYrMgVvcQHQr0EBIAYa+EHGMVfnREs5m6ejK/VYcm84UWu7jTfn+51OBeg+xhpg1dry4v+THQIHmCKkScayke06B4qOLG6s+wPiJj6bOAF5lC+etwOELy1il7ex9/yCPF2zZ4EFRDPwVwFsQ1CENOHKcGeY4QIQp86VDrSLX6x/ANSWF+mJ3sDagAAAAddEVYdFNvZnR3YXJlAEBsdW5hcGFpbnQvcG5nLWNvZGVj9UMZHgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/fluid_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTM6MDY6NTIA6DZkMwAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST5jb20ucGl4ZWxtYXRvcnRlYW0ucGl4ZWxtYXRvci5kb2N1bWVudC1wcm8tc2lkZWNhci5iaW5hcnk8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+NjkwREZBRDQtQkExQy00MTk1LUJCNkItQ0NCNjEzN0RBM0Y4PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjY5MERGQUQ0PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjA4OjQxKzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzowNjo1MiswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFhEaW1lbnNpb24+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgqcq2XqAAABuElEQVQ4EaWU227CQAxEybKIS76gRSX9f/WxUn+nqpRGPHJRxCVAj5mtFfVpQy1hZm3P2LvZpHh7/xiPx6PR6HK5TKdTQFEU8tfrVfh2uwHkSWFg/PF4DCGQghtBy+WSaNM0XddRgYlvjLuuglQq5Q0mk0lVVW3bwiUbRJAKmAhCmGh4l/sTZBBUyLKneD6f67qmmj6LxULd8MjJQ6YU7HIA4cPhsF6v1SnOZjO0SAC+vz6tJNueXqrT6UQn9mi78OGzFVIhRNEBUTEQNlRI24eFnAnxJxsq5FyGSBNxlg9MZLv4faZ2Ri48dCJUdHsMSHKohOoZgq3gkUuXVUMNlWMIVPBY0kKCxVAhr7eh/slHSw/KhB7WYhCMFw2F9MbqsHzUTKAJ0nnDQZX3GJ/J75ehJWLkT9ZPZ2KIqrSt8ZNlkvtlTkQx3ex+Oh+nvdyvUuTjxDrGyAf4efVKExcizkGy7D8Kgl4D1+5hCHDtpS3LksV+v2etIpYA5wAoU0pxNSM+n895/NvtNtjnNkbWqiCHiaNxXEJkLT0FnXoaR0K73W6z2VCBIv4uZY6UFKkTHy9TV7YGV/gHa/VUaTJ85nkAAAAASUVORK5CYII=)

  </details>

- `@texture cable:block/item_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAUAAAABACAYAAABr564eAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAFAoAMABAAAAAEAAABAAAAAADIwMjU6MTI6MDYgMTM6MTY6MDUAxUO0DgAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQlpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST5jb20ucGl4ZWxtYXRvcnRlYW0ucGl4ZWxtYXRvci5kb2N1bWVudC1wcm8tc2lkZWNhci5iaW5hcnk8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+Qjk2OTQxNzQtREQyMC00NkFDLUI5OTItMzYxMEQyNTcxNTIxPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPkI5Njk0MTc0PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjIyOjQ4KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzoxNjowNSswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj42NDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4zMjA8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4K5MpeKQAAGYNJREFUeAHtnW1PXEl2x6sBNw9unsyDp2FmHHvszY6xV8loMi8yGykvouRVkk+Q75LPEilv8iJSFCUrZaVNlGilRJndbDTM7qzXNh57AANtHhpooKHp/P+n7mluX7rZ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75UP0MZfzgdo4nvkA7TwjL9l8wFa+Ww+QBPPbTyZfIAWnl6zj0GiE9KQoJh4Gj9cQzowwxlWXk5S4Bo0AEmxyQfELTypYuIZwmEdpB7+IiY+uedw/uIkjd6CST6P4bEE1r9XPkCL/F75AE18j3yA3ynfIx9gL/mXPECvdfwvkUw+QL7PC+hF9HP9XrP5AM08tl+k8wGaeeYjTOUDtPLZfIBWPpsP0B1smfSXzQfojg9MfDYfoJXP5gO08935AM18Jh8g0yJa2l82H6CZz+QDdJs+nVje9l/O5AO08tl8gFY+mw8whE/nA7Ty2XyAVj6bDzCIT+UD7MeLAeRZ4FH+J/pUWf5H5PHnAgSzOSyOuIFmckIEn+Gev0bjYmGkF7/y4597HhkhXBUbYa38v3+Z4ofdQONcpuasYi75XzzyPL2fmwhHN/xmzLw8d+/L/Qfyta8ee14WQ1D/ZCN5Xvm1JxuF+JO1fc9jCsup9EDN9vz84g2nkaH8XiH5XHnX7RPcRzhQe2R6/jL9hhMoJ0pxHtTKSxorpKPawxU4GAwgISqfYd7nNzE9AYPdBI86YDV3AMkALLz8T45R7M1dfyXXsPLz9x/gv/nhCNjTQclJYeVvfnJf0lG9RFLkNewDtN7/+N05+Y9+/IdO9GWt8n39kch25QXuHwchjPrT+m+sPHerV9S/tLS0JPMMLgywDA8PyxS4VvP/CEbexLfZ2VkZgU9P/cLGUfJf4/XvkY/6Y1uI7Sf2H4bQ3hb70YkBHhxw4zJ2vsAb1JFK3kh90/d7xQAjH/UX20/sP2+b/eiKATK+0Wz65e6ZGd155GMvavyuioFEPuovtp/Yf7jd7G2xH50psMYAdaMgDR5/1t3TavjYwFnSMUD+HnkfQ4368/tVYvuJ/edtsB8dD1A7Ll9pwfnFeB8NH790E7G+0uilS+R9x4/6i+0n9p+3x350YoDps7wcvXXKqw8zbex6xQAjf3GWOuovtp/Yf/yK+ZtuP3wtE+umu9w57dWpL//Em+DvfNWpcNog6s+R96dkov5i+4n951zNwhttPy6dBe7UOvWDToP5Fo0gtzqoseN7HO30LDB/z5bIX2wgj/qL7Sf2nzfHfnRigFd5duy0LOrWZw0cf498cvSph3Ki/mL7YbOI/adrwtnVU16X/ejEAPV/emit1GvrVTF+lkkPtKT/p4i+F/n+yWOj/mL7if3nzbEfarPia9RA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNRA1EDUQNTAm6OB/wPV7H0P9dsRpgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/item_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAeAAAAAYCAIAAACtALkCAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAHgoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTY6MDU6NTgAHnPQiQAAAAlwSFlzAAAuIwAALiMBeKU/dgAACTFpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+Y29tLnBpeGVsbWF0b3J0ZWFtLnBpeGVsbWF0b3IuZG9jdW1lbnQtcHJvLXNpZGVjYXIuYmluYXJ5PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjQwMjc3PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+NzE4MzA1N0UtNkQ0Ri00NUU3LThGMDMtNzFCNEVFOEU1MTVEPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjcxODMwNTdFPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTEyVDAxOjI0OjM0KzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxNjowNTo1ODwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOkNvbG9yU3BhY2U+MTwvZXhpZjpDb2xvclNwYWNlPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+NDgwPC9leGlmOlBpeGVsWERpbWVuc2lvbj4KICAgICAgPC9yZGY6RGVzY3JpcHRpb24+CiAgIDwvcmRmOlJERj4KPC94OnhtcG1ldGE+CpBUc9AAACXfSURBVHgB7Z3bcxtJlt4TpASgQBA3iqQItHpEkeq2WpJ3PC3b4ViPH9br2CevX2z/gX70m8Nhvzg8DzOe3Y2weifslqa3daNabJCiCAIEQOImkfDvO1koFkUU1N6dmCdkMMgEUPnhZOa556li6ssvv1xYWPjw4YNzLgiC8XicSqXo+w4fnZ+fRy/pRI0L+v1+Op3mgrOzM66kzXHm6zPnn7lcoArmeuMPog9T9+7dKxQKaNt2u41o0UHF0KGxxHwHL6M3fSd6yTX5fJ6Xp6enXDbHma9PnDfm/DOXC69M5nLx95YLGTrv9l67dg0UdC5rSvOIdLwltPdCt5q+v4xr+NT35zh+0fxqzNdnzj9zufBKYy4X/xC9miLF4RUuKJlMxq/m4uIiCtfjRtFKtND+fX4TynElmn00GnlfG6ac48zXZ84/c7mY640/iF5NPXz48P3792Bdv379u9urrpNyhXF6pTQ6OlZ/Pe0ORryz+cuHO4+f+b4LMulKcdRs3/vux2gsCFFfOL2hWymkc4FwesP0rfXR0ci53uo/vXv4v5/7b/lJOC7ngrMQx+XStfyo/o7vuvHg88aTNxc4fFGvP4se5zSpXt/1h87jNNv0M1s3hi8bf18cl966NdoTPelKelTvGk4QEjybnskaGj0OMsbHHyBPC1s/cZ2+K0xwjo7vvT6M1vbjdb6Ms/rwH7WbTbbGVmwU4TCKL5qBw+K40rLmwvoEmRtb653+2E/NHXXch6zocT0++iROqnRNS2obt/rgc9fqHtZbgoWdaNcGLpf5NE5trVipHH77dx5n89EX3Va78fLA9Rc1qQhHPTdjXqvbN115+RBW6S+mV9K1R9vj3sLe75+NnnQ0ckkJPTE5bcb63PtstVZeKhX3dg7gZ9aq9tWtk8Gg/epwtNPWWBrzWin4biIfRjj7Lb9H1c31E3ets1MXDgi0XDkdjFmiWfx877Mb1Zv5cnav1WOP2OvCZi11fNRuDUa7ByB4MpgvnU/jVNdP998wlouL1ZvjXr+z927UZ7N6WnwJzqdx0tW1anXj9LjT3nsrnHK23T8dNUfar+BMu28C6LJp1+xuffdmOj/f+yzEGbTae203GMGTbjBkrYRgvHeBMxhtffN8Ks7Le5+76g3o4eK9V6+Fw/cORl78Q+UGPbU1l824424iztd3IaBWLbmgUH/5hisBFIg1iZj1kdlP42TPanduL1VKb5+86Ry3UYmjvuFE8isdUiwGC2xEnJ4F7/PyjYrIECG4hIVgPmhYr52Nmvrvd6Wd/af94ei7Q/fqfXxsvK+xuQwT8DgT7SwgiUr0LcwWZTQDx2tnzV/0wCheO0OhZNXjGHkyA7NwpJ0LpaKWspMSDltOCzLDPdOqBhKu+MEoPpd4n6vY1MJGYYJTYs80TU0kwun9FJxMdblYjegpjQfGwWw55scrINfTt9A6kHDpbAAPnbd5E/rRpLU76xE9nR6a0YkA2VfPScLxF8zAKd5ZrW1PcGxGHkeCgXa2xtw/iYMGvPvgnli/I2MTDhRgzp2agkYBbd1CDmfMSxrw6631e9ULHHS6cbDrtUIcjPTWzzBss3Bqa2v/4p9t/fwXqFfogQGWstosOq4Yihkvb9zfliHpDZPWh4ms379786tt9I54u7ScK69raqgP2S1ruTI4t+/fRiUl4uSC/NZnS/e+RA6luUrLqcoNDc6eCSdUrL3ig8+qX30xG2e5WsjfuVNMvRdO9iwfLLmgJDHRQqFYaT20P4aEHZxFTzmbr2ht5T8xPHuWSg1dZXkCgoycQQzbOhunEKRSuXPXPxbjZdPj0orLlsQAaGdr7Ck4d7/+xyOnpGjEw/F+2i0wo5TrY9QlCNl0MbfEaIkYiszYUrzx1a0vHn2JcoyPjff5Cv+lGB5JOjgseDbtcfQRaLW12v27Xzy4zav42Hhf+ncwxBKfvHopZ8XWBxD/o5fGk8JBlc/AYU0Gi3gYB0+fN8yAaYWhIRAUroEAq2u1B5/Drh/hXOM1jfXSkkVeADYHsUQj08x10rqfLrilrBgCzeiFTR+HY5lY1BerBWdMTzP4kA29A89/CHyEw6coEbbAvsfTcAmHC/jQ/MEQJ/RR5O+EOC5wfTP1S/0ZOBDTmJg+8zLElKyRcJwpDpfTHNX8y2nzMmI63hTTx1vBaQIBnIuW075ewE7HwTC0zWVmnGRjwscXMNDjrYh3rKaus3MYqk6uo280HBbc9+M4oe8wEwfD2fZq3aWgp+NCzBiOkydCgx9a+jt1v3Z+/S3cZiuZwvpiBsNZuKFbsoVFww7ygpqN8z/+FvE2ewzOuzpCO1jU1FBAH8zthXcGzHphNs7z//5r1HHjJW5dqvHyh1QuIMLQt7NxH8LppIa4eF1TbXKRps7r2ePv5dETCuTKo5e773JLbXYHHDauNzAb1nOD7qmWyOvHaTjZdP3Jm8JGv2PuKjLfDVLqD3Azzdk0wRmP07iin8DZO666wLu9OKon5beGAz2w9CKzQJGdps7HrXbEnFPnddIapCrn7T4aDfrT4/6wQ7/ZnYgG1n3tdNAaI8oTJp+Kk9LEneFM+ASfAxyaZMGMWb990Fc1gW9TcBRalXAz63vH+rrBaJxhLv1RT+Da/SCDjRy74MCrOQO6igMHFsqF/Eb+dH/yXRiM/psLHHz8SsX1Oyf4+FjcZBy8qK17X7z8q2/8NYWNzzutjo8s07iMWJSqvJCT/RN/Ab+n0BMEGMub/+TnL/76rxmCZi9srHayGeFIScrGy98fX++93vkIRwoaneib3N7qGvyn9UB+0J6FYHW7MM7e6Ox3Rk7JCrGjy4ax4Sg2No5DUsLjsDeFnHDwL7ZWJR57by9wvGtmimNCgmT4og+OpQ5GEY6yE4upbGZ8DEdP6BGO5QRasbExHJgV10BOruYFPfwJyJZo1GCCozdNgxTGKKALGuI4OIYwiuVYQhwFzua5oLU9PeB4qP8PHBRNoEASm/wxDgF4wR12p9JDnIuSUhTiFrVf+yYlgXnQEIpOZL86buRd6WQcHExEy3ByDhM4Eye9WXQ/TF8fJUaIskXPBAd1LKmzH08PBpvw69qAuCoJh4C9s38oHOgvlF29OaIj39BsKpMFNsK5eysJh9gCUW+8PDScjKsPDt0bA7GkWQHJFHMe/vZ74/Ob7ofG1HWu3rmNL3b4Ysd0Xw8HxXIvIkbWSAoogKTGE8KXnpIqCTgIszQgCQ1cAdOkCgRRpm5BOHAjUP1c4/FTIW8xr+n0IN6p1Ghvbx+dlQ4WIKDDHG19ZNWwHMS4R71DPsU1q8hNmjovEhpLpcLJ/hFcBxuD1vEaDT0AKza7uKKgtWEr3E/FQ/XpOLjhd7ZOmu88Dl/H9mmdK8v6bu/QHHf3UNlZZUeTcAgp8tX8KRZiMLTLHNrQPHHToZDRG2KTxuMD3HymBvZUeqD2Zq3ihu/b4+s2/T75n2Kw1K4wIoAe/shOuwrnaH7dknDWN291x2bwqmsFt4Atx6lvE/9ZyAtUuwk9x2yH7EcSPbkMYZN9mivWiCpKuBiYkFTqPYkg7f9gBIMtbXyOAvoIJ/Sg/ZGgmMbyLGIU3GRriG5ta225XOzu4Yn8oPdRqZOwl0ui48Sor3EeR72wkXmpVQsuu9qWrmQPJzjyrKU6r+JoDywvZxA9d80kYbBYqJbHwbCTtYyHZFjigeny33QVxys+fSqpMJzeYNQ8Q6EQmMnLk24lN1oWThB66VNwQLDdFY4jdtP3joJCpnRtnBUvCsfsoX1XGNxdxSlkA+WhzM3ht/il04f70rVlRwwucJr4j5bOiclpV3EUjYqenozEBEfrQE7Dv0QBRZnECgaJdZ+CM0YakQSPw6pykXQ6QTc9a9ojC1N4RTxu7So9LkvG0HC8JeMyCbwcHz9EKxziBMozWLuKA7vrE8xz7RYizcq4/QU5ztg8OFPK2uNwUUaukLWrOKHOCsbF7Z8xxwbauY5YOldOjXwgyFaTx5OG7S2VbiXhpILrfAQ3FmtZnJUwFc5b/Z60s+jJWQKalckourd2lZ6lbPmU9ckOSM64YCynx4c+hOR05PnmlIC2rffRPUhXcfLuw8kYqX6LGyR9EXMn5bRqOo7w2U8fxZRED/4p3nEbzi8tCwedRU6WhvaRo0DKYigc8xuUz7F2lR7Wdtx/T14C3ihWau3eqSeejqBYH0gyfRrqtQQcZWzGGRkM1weHhMnSxobrt0+PvSJbJG+bzmU6Igy9Jr1Ju0oPCQ0qHg729vk64TiH3gd5vLfLyQovsToSqv5xZ6yd9e0qjlZj+P701ffowGJlieVav/O5G564vTPXgqRztg8c9OwEQ3+n4aRTw5OD1zusMOy6lBnf/Oo2Vx7sLLjjEqskK4jcZt8qELHti3Aue9C8zdbW1uS8nHrVKMXRLWcVQPnN44KH2yzl4Yu3SZ4mICJdJ40mabw2BdRtFWBK6SA0Mj7Uw22MkpR+guXx7DvB6ckqGI4L6THNhbXfWlH8aw7yVEson4Im7SyHd9Q7EBQL0U8d7u14Uww3G07eX5yIwyiPo+PKE48zHpDUDpPRUitmYGfgKA9lOHhScpSOdlkAUUig60lV13COu34RptITHr6x2kfHHA8eHv3dBEfvGKBCXUSLYGoWPTp8k1QLh1NchQjQg0b2yotPzAaEOFLQU+lpPH3htQxBhk6VwSGtwcIq6QEnyFoorYzOfbmLiSIemYqjgwpOJkkmgPMXj3aIBJd0Uu1X3n0QbWbMSuCgnlYTcOqPX/hDvMN+/8F//DMpxE47PAPnUI403frZ6vYm08Ej3ttvbSfhfPNU6SwuO8o8+He/VJTg024ubfOCJc6U5uaCF29xkJPmpcNJk4hG0L7/b8D5v3JUrVnYoU0vVG/yBkIxY152Vult2Lv8Lx95hajDPcIp75sDUVV2W+vjSknr03n6KjqqWnr0J14hnrTeCqc3wq8fwerKR4sxPKFT9wv/vdH3oUnGVc+Kbmn9zupJ/V27N8lPTpLCij7NWk/FgZ8P64+9aIzLPVdaubm5evD2usObIQvEWtlYnL/RkSVhEvbLcH4D2conBAuc7i4VV1GsJ6mcO37rLQ1ihVIYHb2dQQ9S88wEEJx2NlMryQ1ymes+EYQZIEwAh0jFiw8fTp0X3PLsf/4tVyII6Oj8/bsng/N8dqHbP+80m4VylsiLFW5MZDaOg6kJm74bKc2myVWT1nAb58pjwMS9IfUShKWjl0cyhrjPg6F8rkm2hfEf9cGRu3FnlbQGPCdk5axzuB4IjPFiTuZ9MOw6LGGYtUnCIeAlraF1DLOoOTYARp/wtHCIg2bj8CmiaGkNumGTG9tf9DIjfB+29IeTJbk6L5FBYuEjHASLKXscqXtzQHhnNg5BnLSnvjTyVH2QKxugEC+kZ3EWDly4UuJH3orHCTJ46OEMmZSdg+tl/xM4WgF+8IPAYanJ96EseIfm+9ADh8zAQauqqdiDI5EIh2NVYwNpedjRzwuVlzivOM6RrQlBUpDRUR7sZFVGos2WbgaO186iKMickjNBAAqkttZqX99P31uFw4l/8a20dJ3U6PluEj3CwaKrviI4bR6HRpRz+Ufb4gQsUKVIfKpwFZzkeQnH0k0wySkhC+5Ss4ucI3HCUUKv6Mp55dY55d9pz6JHODr+PWm9Q2HJiQ7GhrOmhAn1AByv+fWZgXMwUCALC1WKcqX759Q8pILM3a//uSgxyyq3TFFabhY9Hgemra6RQG8368+egJO+e/9L4YCPUHg3HNY6GCXNS4deRx0WGWtHaOtaJ0r+poac0Gq4x+GP2k/AQQVtE6mUTo/bb3//lDGYDSNDuWNeetdnFj2v3iPUEF/YWsUl1SnfzgsG3iQAwrGXFy+x0m9aRyefvvFq0pUOoX5BOGzKnVVkky2zKMEpD0Mi3Jx6vxG6+DLONVS+3p00mK/74jBVWd78y829p89VL4UjhV4m72yJP0QXzdggjViQuZiMu9TnTYSBVAZStLn9sP7iAEtuWYiyKdlQfcicKjzMzMYhlVEol5fvFOuvDqSUlc2wXITiXDUJjDlcM3DQLNgutEMqKLaVGxHOyJ8qGgjbIBwLM5NxesTrqHWdVGTTOi1kLDigTZSjZ0RT1rnZOPC9D/M7KxEOcOZmKh5UksEr/WQcXS/L7JNi/sDqaNAwd5jPxBPkuegZG83GIWnD9XbuxJY7lvSwj0uuxvvjMW8qy0ZLxGFH2B1TWJZdtQqQo05ED9YC+U/pUBfCEUI7FdCLS5h6rRzamE1RQpY1QR/1BirQtMb657NZV1k0Z//S2Dht/mIp5Up+5zffmgwQEbqd5mN9ZFaHuo5qOfdaiQ4KEZLp0YCeq6wJB6YlA95f3Gl+63HEV7nz6p17ewN85Jk4BI5BlnV4/fj/aFN6x3j37XrbFx6grPPBwjKpc7i6/i7VSpQvTWpFxQm+ghAyGkdvopxJGq2K/bh/t5v9UUejs3FqeeLu9pMfzJvOHRJuUz5ouRfxT24pv71+sndCCv4TONUV8qrKsHOm198l7knndoWDu7ZSgtS1rx+92/8Bgmfh5MrFWoHKyPart35seBDqvVQ5LukvHv0cM0nV70wcuRdk2IlaZO3cucXuVr4l6eAoq0gpyOmgX//101k4rlfY3FwOFlA+pAEhicVBxq2CUHlgjmS++Ne/IBPy7H99m2pZ5l08cYkn7Y1e9c4DmKS+98a9ard7P+69stBElYi7nI647eL9f/8XXMmxdhwnTHGQN/F3mmBPGgdv+Fay49Xt2ztUoXnxYCgyg2Ols4heetMKpY0OP5bfyMYFDq5Er9EeLOY3blBIqCg1xFGaQllja1aBp2A8GvsxDov7fLdza32Zwthq0QukuSEeB6Wh2NyqKfR3Fg52pdmmonZcHjYUxftMq/66dZWdCgqHcaLLps9LxR4jghpqqorl0SFOGctibpFwggkH/CScYwpLFGIPSIz6BA4QfaXaV7A67JzXF/KvE+elEUNiMXQ04mSpVWwI71pl7mB02LR56fVPwCFyN78+zAJFOCwV+QHiyklLpMeywygXZFLWi6PldhDWXVjs1X5FfBqmX/h8Oo6B8Kmu1Eqi0FMXOAWeGJOh7tNwmJQYYDqO2Ax3/kymV6HAIuefrtt0y4Fxchl3D19Ph+m26ck48oOUjfXlDbxgZdh0fttX4O7Vn3wf1pnMogecjCQoPKEJN33UGYQJHE4JUARmm/kSWsK8wGFN0vi8dlUvtBnk7uzmAzKHqiNucbYsO/QJnAE+L9wWlqZhmOGi9Ir5vPiJzaZKKTKL3utMpAfn4LjbGRz7SgkxG0VV/RF60KaTRs8utTqYVYqFZtETnHFlYWzyaHPzPgo4OrkhtuA8rX9OpYe88qT1wdz6Y0DK/szSSEZMUZBRlMuiyhmxZ26t6ipKzkyf1x1lqDnwTHHOYUemEQ5HwRw2KEdk+Pk1ygr1pTNwiE443RULwdistqkgMpOY0sNANCynzkh9+AxMhHPN6+Xwth/vKTN+94CkCWOsmXj4rp0Us+UYjWe/fbKwqyMXP/YSjnRBX17G0aj+2+/80Mu/zYcKMrU/vVf/5uVMHJ0ICeexggs1pDdSiP6dILP5rx5SwLSwq8hlOj0c49D6iyro9i2O47U8aZAHn2Mhk3H8SPOjd/ByrCGiET0THNUz7Hdm4tgK4NfrhMeiJPSX3EYrTJyoME6TcNiTcQyEIXxvJPNhOtvjwIUC17lCsx3fo3jfpN0kGRxjXCkRr509PQoRaDmVkPf68bHx/iUcvpSgRJUSkwY/THCUqej34mPjfftUqRtUsORQFQ4XOp3VVmEGjfCcU75cZmFBwSYIkX/g+yqM6XFkytGlFflSsIVg7MMJY29WzT03HFJwG6GPMg1HCTQfGylr7AukiMfVtAXhDTUdWyW0oz3BZgqOnZ1qEFUTFdM4nA2QH8AdtptTyN2ZW02M6Oc1nZ+Vx/cNHB1dltE4yp+QhNFRsPN3mkzcueEsepTB0KaHOBx8fafkCflfU2QkAE8a4a4l7jtaj0krYdj8IJzqTWl8guz1tI5ws2dYC0T49W+e+OVKogdu59ybuUA/OCrmwWn93Y/p9Wx1o0zOpPOqj2raCc124rx0HhCUkKx2U+yHL0W2pPE7+Z1MKr+x2u4f4PY9+S9WJdmfhSMtvFNvv/gBzlGGbbBIzQ84BNDLK0Gncs09bzz5z78yXg3vpr6673LCWIRXh1Lo7vz2oz8h0d/4q13ybBwY5je3KQVhmn/zn/7bFBx42jeSJuGu88duZEIUWSa9aQ4vcJwgwRzwFplywrrJUN0UHu9rG1A3/LgeIBOcXoRz49F9SAGcAHMWDmIsZ4oWaiJGqe/p2SxyP6HHmU2PBDVEuIwjCh3LbafqysBi4UmYxucS75tggGC6XoKaDukxHNhRF+CwEMVb+BwfG+/rgCtqEQ468SqOsXt8bLyv2zTMPxIYuebSsuhhcTyOcrXRxOWqx8fG+yyjcMy6cB8gPx/hSGNqAbV6cH98bLwPe0Q4SCk/IY6frHYtXH/hbN+Mj433iXIY6N1ntkN3BjEvPylGRh3B9liE+Nh4/4t/+VDa2XwWSuVIQWiDYreoSMXjlKCdl8YsQnxsvK/bNNgmcHpDnCBSIireYjr8eARAyO3ooMXhE8XHxvuU/XEBlhKJQHOlAEHCtSyKFeQqKunRci3Zjxnrg7a6wCGnX9bWG04PE0j4ovsAwaFkhduFtm7FaYj35dDZfXrQA4LdXZIRTqBTXH/Sc4FTW4uPjfdJg9i5otk/KjrwuNH7Ni9MV/vJjz6jaPSk2IL42Hhf2tlKI8KjSyZJAyeXef30tWImTAVODAmBA9UFxsfG+1TXyUKgefzdegOL/Dw99ZZlSt8ZTvMTOBzicXThcThS4oeF4rA6W2jsDfAIVZhg9Mg6BmdxGuJ9mQpMVIizSJG7qjXA4UbHnYNn3zxRBphWNyvrevGxOiRE5eNR0xRFMsxGagB8Yw685LwwJsOwvrmq7a+/e/ar33FyGB8b70uFoW7M3fYqPo4DW3AflOdI3HCSlfGx8b6pjFAveHr8b08Pckvew+PghuOxxsfG+5Oxdqfy5IX+crdCYUwiWKKCejL/mjP6+Nh4X0OkEA3He5rI7QRHPhHSgoz1F7GWHJXEx8b7hWzFcAxtGk4qSyHRIsEmW8vNgfGx8f5yYKbCU4UHPeAmLtOkmhc5SlV/ay9INzU5menFx8b7mBPNgt8BBeYflt2SJcd7tj7RTVyGAz+Ul+Nj433Mm7bbcJAQqgJ06x3LRcgp8bB1Q3FYwIEjEx8b73NQFtKDM2j3dLDXYieP4xMg4FgjERcfe6lPDTXN+PBkj0qVtlQbixPSg/BPnJL1NCc/l8bG5MLff+hZurP/hpuzuWEBgfR8KBGFJO9JFMacOibhhBJhVc9an1aXIjBA/EljGIdFODPWJyBvEDb8TfwvHFjD4f60M9kM2gSnWMkm0jMB0V8SFBQvU4Bcy+sYnHyOP6oNcQIsyqdxyCQ027icHgdbHhraC3oCMhVJOCjWMIAzi6WiIO7UrS3KQhNFWSGN1/sy0liC2B7F+z4mMO1BpmURzYB3Dw7cKJznaEPq9M31tBWIj433RQw/clzE/J29IfVXSpJUcmkKn38yjlwNj4Mh3x+QzafaB6dQ6oKZfvtCXsIFPbk4DTok5DXXKe7Y8Ild1TNJ3XC7Cyl/q0/A7qGdD3YIm3RiM+pwSKhDsGgsWj/qa9YKP60uKpu+saHqOsM5BgftfLJPYYnh6NKLW1F9dDAdB2kyHAYwYeHU1rrK4+Qw8qO6hD+JHi2Qp0dfZzgm9ix9SM8xlYyGQ4pwBg5fJxxDAcdX+/HKcHQbAqk8mhVHUxOURI/K7AiQJzg6okFcrUGPln2fnFTPy9h4cHE7/kfro4M4jwMP4WtTgioc+QuI2YS8d+wUxdSdVmstYb900CQcsQETSOlBCmFGEhysBVpb9IBTyXeaLW6TiPYovu96WotOa6XuJajVZYi3aYkeJVuohhS769SOM3EWaCoOaTFJ4wSnCwGGI+1vt11Qw26wAZWR3SOd7k3Fefarv7GkiniDhA33SWEzws3ioQd93dCo5EnunCiYc6dEnMffRzja1uMjkuAioLS8ag+dCLPPG+e4vSfN5HlR9qcyO25m1gM9xtliR7U3jgM0x0NUfNWwSMqiBU6O3yfRMynXI3kFk0jRKDnLDc3o0HKvUzWrQ30Yb9XW4MlEPgzLIi9wNClaGebJkxYIXVrOnFaUp07a98ktPOBYZRt/0EelZVUxl1sUxSrhoDQ3G3GGrkziQ3MkEUNVWPqcD0jUcefLxXw2OOVknoQDSQ9wjMGS5mWb5VUQJwe2GlnuwBhDSYEqdRwyK3cTDvdD6FB3Ov/YZoU4GPURu0bixVG3B9oZaKoUaFFrkHX7KSQoCQeloXoEqQ78A7Euu8/a5surH8+r3nfdi1vYkXcdEnrm5qH7CmfkdPQwoVTt8JE1r0l7T/6r7lBSfFHTxiOBfBqNjYiL4xAJeisR4kiTvttRsQSWBHswltwO0twxlYBDVR9DZS1QE/520olGjuPYbVeWhP0kjoKvPh4lxMv9vKCH5Vsv8IgMU0ZJ8/L0lHXziPZG9bARDsffmpfhkE+w5HICDlpM8wpxxLsehxsfmm1OMoWDUV3JyCaZLZk+rzANqudJAcc3WqSC1/APw2FeSoKHOCCLHktAY4R0+pS076KHap/wsUF6zokN9PRcwXm7loCjgNHjoKP7w+FLZRIhQFR5Z39CD+fP3CuYiEMalKb7mziwGkb1qiyyP6oKA7utW+QTKVRA1U1dZwm8vH48U+oBXISDf0dFEPYGYhVJVdfyG6UTu4luOg7a2R9XrGfY344jM6sZCWR8SnqUot22w6FeltvL6W4SPXEcLlJdsMfJAFIor3CnDytIuly2v3eatD7aHdiVBj0WCyIO+M4pbvQoreBI6aat/SPtt09VJ9BzCcfXTYNDbS2lflm39tWDVPb6+NVidKgB3tT10eYeMGsU+hmLyWWobOq4x6Xz5SC9fucr1NnbncO98LiFz5NwzuRwkHFaPyNBjzWllEUBZW4plR3lt1cJicjDQI/NV4ougZ4LHOW1fZ27WfqlUnnpq59JKe1AYTByJ6K5NR2HHPqIeXX7aHl/c5wyP5fndbDzps4+cpsI9c0/nET0KMXBF6Neabr7VpFjTgYZy6F7Ukc6+JZvpcJDaedyCuecZ9moHCI2Nt5XFGk48C4H3HKfPY58opycLNhiQ24ClZvUBsbHxvvCUZMmJe7WSYhnTY+jk/eccGp64tQncHT+lpNhHyhOUQIhPNlTEKQvIWNbKXJHPDoxTkO8L59OOGGTVr2EY3rEcDCwKsVLWp84Dh7TBY4Rg9jAqVasJrosJKTj9yiO6X1eW2oloySlnh6UO4vscTjWt1pUEOJj4/04DpcJh7VifSY4Ym6zAbjPM3EmYSNf7X9AAIftNnqw66EtaeoBFHEa4v0wyxwuNbuPV2VJXo+j+GBN6QWreaAGIz423r+UrWasNtrQDkbeOcKOiqTBkEpQzFt8bLwvR5WYmiCUfQGEqRkOhgQJhwzslhTccRdrAZfGx8b7ohkQC2Y5LJJ5YF5U4pM41iwypH1MFS5iBZHB+Nh4X26N4SikYL8inJd6oB23I+etvBJut4gqcd/x97X1ZMMMR9Khp6yldLvN/iEPCVrCtaeRfD9WvXachnifIyWfNZKDSQ0+OPiMFDu92GFVe62DcYbcRVd8TmlpslygUkIcK+9TpgKc3QNyHd29zmm74zJ56rX9fGfIOzcBcbAkzQDnl5elzQyHebGwPM6QI6uQniBTffQwPpd4/8G//VPDoV6+aEeLYZ0789p79R3zwmCQmNa8XG/zl4/iY+P9X/yHP1PdPX5tJU3cH9bd27ww535e3LSieW2c3//LP4+PVYqD5t/yVlRbXn/XoEgBnsYKnRMIoLupmuopes6VCVJS+xIPxQaTsdYNcZjPCIEUzokK48ChLTELeYWqNCIiQPced7t1fRQfG++z3xFOwxkOcmK+p+TcKyM4dbBIPEgEHR8b7wvnGvT4smKf7gjlZIJjCZmBnm8APYRgtPgy+T56SvVnl3Dgb01OMiw9oipgNgzNzb0zhISfwPGBPMuCysaLkVk0HHUsS6C/ifRIX1g8KL+DdRCOeUN95DbCkTdNyTaba+RMmdcUnJVMeoVNDHFMncl59A92ScaxJwdBMTsuelqYWNtEhpoqMXXGCz0jJufZZxo9rAZuuHB4zCkXG45/dhLTUh2Y2UJNXyuVSA8GXkpZTylR+k6aPa/a4Rc8T0MF0Ye9nfCeBSc3MQlH+67cT88d6SG6bJNULfdVqrp/iLDwtApJF232vOSlYvyISKxGhYtxifxTYngEB+cN3MInaf8UjhiFhUA1q3RdooiGtScfjI6YCdULk3JPM2ZJ89IXsYZ6aIH8ACRE9AB7xGGjJqXqAtUgYkX67dKtJH5G2bGMI0QSHoOSQROfkYgLSz9q8niBg+L+YcMeOauNI8Ng7ap8YRLELcwOhz17BkkNFczpfEiL485Jaeohw8RSTF9FhGpXcVCdzII9Yq9VLx90D0Mc6CntudfF/YUGvqZxEQUVytVOw5HqtEIAnabmMtyN0ViHOj1vwOb1GrXTeGmeEIlFS5FNxTkBR/SUqhvrVhZR0LwMh5NYDHM0Ly473du9RM/8fxKypqxL1Njv+f+U88lu1oTVmK/P/H91ek6Yy8UfXy7m/5NQfpM3wnFTPP9fi14m+T1fn2gF6NA4F0VQ5+sz/x+kfwS9Mf+fhAjahZ+I+PmXCKHv05n/z8bIj56vj5dJmATGEOtYm6+PZwwWY74+f1i9Mf+fhJIwL2DR7/n/WoTJomhuvj7z/9UJPyAdc7n448vF/wM7xFkUb8NoSwAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/pressurized_fluid_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAA21BMVEU1OTpAREVESEk/R0lCSElFSUpIW2BmdXlfb3NtfIBreX5ren5pd31peH1pd3xldHhebnJsen9zgIRzgIVxfoJwfoJwfYJ1g4d1goZsen5kcnZdbHBqeH1wfYFvfIByf4Npdntte39ufIB0gYVndXlLWVxNXF9LWl1JWFtMWl1MW15KWVxpdnoAAABodnpse39vfYFndnpwfoJxf4NmZmZreX12goZ5hYl5hIh4hIh3hIh3g4d4g4d2g4dmdHhzgYVvfYFxfoJKWFtJV1pLWlxIV1pvfoJebXJyfoKz59NvAAAASXRSTlP///////////////////////////////////////////////////////////8A//////7/Bf///////////////v7/////////KSfBtwAAATNJREFUeJzV0dlawjAQBtC6pVQRMKbaQhOapAKK1IhQRFTc9f2fyIYtyXiht87l+Wbmz+J5v9YWqD/A9s6uXXseAuX5FRTsH1QPq7UgCFDF9+oNdISPCQlPTqMYNepes4USShmjFLdrqNXUkHIuBMaEpGuIS5DSAtiRLXcwlhk463R7Dpx3LvoGLoUYlEVpvl56xTU4KS7kfDESqusV+CJcgPA3MNQw3EAW3iw6NrG5lIPRyIrNI+meQ3c4kBCiAeNkBWNKXfjRkRaFe/RscusuzSZTEDu9A9efzQDcA8gfCrB0eXTzyI8RgGyOXUiVAimBAFB+VPli9jcsR0wsf9LwbFK4eul2e8S8Ohevb/13M1L+7YeKovXSTw1KRNKCOFas3bZgPCaEMQe+IFgdA1D/GL4B+4x2BUS4MqIAAAAddEVYdFNvZnR3YXJlAEBsdW5hcGFpbnQvcG5nLWNvZGVj9UMZHgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/pressurized_fluid_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTM6MDY6NTIA6DZkMwAAAAlwSFlzAAAuIwAALiMBeKU/dgAACTBpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+Y29tLnBpeGVsbWF0b3J0ZWFtLnBpeGVsbWF0b3IuZG9jdW1lbnQtcHJvLXNpZGVjYXIuYmluYXJ5PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyVVRJPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPm1hY09TPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUGxhdGZvcm0+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+REREOTlCQjctQjdCNC00REFBLTg4OUEtNTJFNjBFNTAwNUQyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPkRERDk5QkI3PC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjA4OjAzKzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzowNjo1MjwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOkNvbG9yU3BhY2U+MTwvZXhpZjpDb2xvclNwYWNlPgogICAgICAgICA8ZXhpZjpQaXhlbFhEaW1lbnNpb24+MjQ8L2V4aWY6UGl4ZWxYRGltZW5zaW9uPgogICAgICA8L3JkZjpEZXNjcmlwdGlvbj4KICAgPC9yZGY6UkRGPgo8L3g6eG1wbWV0YT4K2jYfYAAAAcRJREFUOBGllM1ugzAQhIEYEci1p6ZSnqOH9v3fo6VR1F4SUJRf6GfGsVCDwEpXyma8OzNe8xe/vr3PZrMoiq7Xa5ZlgDiOlZumEW7bFqBMiwCTj8djkiS00BrQcrmkul6vL5cLDEJ6q+h8VYSplt8gTdPVarXf79HSTSSQC5gKRoRkZG/3p8gguNDlTOZ8PpdlCZt9iqLQbmTslBFDBXs7gPDhcNhsNtrJzOdzvGgAnl6eO05o+v4oT6cTO3FGewo/fKjBjYdQcoBREUTcCKH/Oj5s7KwRf4pQgx5PQoZwE3EtH5jInuJ2T+018kP1dgqCuOjpsUCWQbo7EkNwFDJ27mGFo9HuyGMFhkBFJpwXdBZjotGeHeqfevx1o6zRw14MQvCi4eDeWF2s0fEHmprAXW/6uPIekwe4UyW8JDT8KaYkA32Eqtqj8VMMEKdKXoije7KnJMN9d5buUTJ8nFgbY/gA/3x+sYkXUedCsuzfCoqeo282XYB9aReLBYu6rlmLJKXXAKCpRdaSCiDPc27/brdL7OfWGNZi0COk0TjeAqCg61vI4bOxoVRV1Xa7hYQjubOyiZYc4VEX9l4QuCxoqYN/ARQCVWeDIWyLAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:block/redstone_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAABACAMAAAAkowekAAAA3lBMVEUREREeHh4oKCgpKSklJSUuLi5JSUlLS0tMTExQUFBRUVFSUlJGRkZOTk5dXV1eXl5gYGBfX18lJiYmKChhYWFjY2NiYmImKSonKSo5OTkmKClFRUVNTU1wWltsAAB2AAB8AABxW1wlJid9AAB+AAByXF1tAAB3AAB/AABvAAB5AACBAAB0Xl+CAAB6AACDAABzXV57AACEAACFAABwAACGAABHR0dPT0+HAABxAACIAAB1Xl9uAAB4AAB1AABrAAB0AABqAABzAAByAAAmJyhoAABnAAAnKitkZGQAAABX1XlSAAAASnRSTlP/////////////////////////////////////////////////////////////////////////////////////////////////AForvxsAAAGeSURBVHic1dLJWsIwEABgXEDqkpnRUBeIEjBiEbBoWdwR9/d/IScLLZ8XvTqHHv4vk86SUunXWPkRf4FVjrXVRayU1ssVFxvVKn/L6xYiF5tbUeRhe0cAkuDY2WbYZQACIYDIwR4DyVosEMHBvjsR15CzHBy4E4ccNSoALaA/cVSuN4Q6Pmk2NTTqDC0GYGifKuHA1iHNWef8XPu/WCCTdC8uehigEoFKuv2+FtGiF9DJ4PJSQd4Lpcnw6jql/A402XA0SkWA8QTTbDidajEZB5DmprkEnJLeNG9vTXEpaAspBRhPSNmUvLDxJOaU0bRX/Da+y4bXIyOWesm4MF3UIZQvPQfudtDvmwLQ3HP7KYUBMeizBx4QBqhEDJ32qZH5gFAfP/KQizpqvafZYKAx70XePc+7XeVHaJctzPNL50H5wl4tqLfs8SQUduDgPZnNFLkBfQSYz40MUG8g2GWD/62FT7d9kGH7PEL7wAB9SsveIShGlDJMnUvnR8dvjopeJBav0O2F/C35ogTYdwqQr9IB37wEZMnD14/4x/ANKvN1xSUE01MAAAAddEVYdFNvZnR3YXJlAEBsdW5hcGFpbnQvcG5nLWNvZGVj9UMZHgAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:block/redstone_core`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAIAAABvFaqvAAAAAXNSR0IArs4c6QAAAMZlWElmTU0AKgAAAAgABgESAAMAAAABAAEAAAEaAAUAAAABAAAAVgEbAAUAAAABAAAAXgEoAAMAAAABAAIAAAExAAIAAAAWAAAAZodpAAQAAAABAAAAfAAAAAAAAAEsAAAAAQAAASwAAAABUGl4ZWxtYXRvciBQcm8gMy42LjE4AAAEkAQAAgAAABQAAACyoAEAAwAAAAEAAQAAoAIABAAAAAEAAAAYoAMABAAAAAEAAAAYAAAAADIwMjU6MTI6MDYgMTM6Mjg6NTMAA9VKGAAAAAlwSFlzAAAuIwAALiMBeKU/dgAACQhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IlhNUCBDb3JlIDYuMC4wIj4KICAgPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICAgICAgPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIKICAgICAgICAgICAgeG1sbnM6UGl4ZWxtYXRvclRlYW09Imh0dHA6Ly93d3cucGl4ZWxtYXRvci5jb20veG1wLzEuMC9uYW1lc3BhY2UiCiAgICAgICAgICAgIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIKICAgICAgICAgICAgeG1sbnM6dGlmZj0iaHR0cDovL25zLmFkb2JlLmNvbS90aWZmLzEuMC8iCiAgICAgICAgICAgIHhtbG5zOmV4aWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20vZXhpZi8xLjAvIj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJEYXRhVmVyc2lvbj4zPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRGF0YVZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQXBwbGljYXRpb24+cGl4ZWxtYXRvclBybzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckFwcGxpY2F0aW9uPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT5NYWNCb29rUHJvMTgsMTwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckRldmljZT4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4xNS43LjE8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJPUz4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJFbmFibGVkPkZhbHNlPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyRW5hYmxlZD4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJQbGF0Zm9ybT5tYWNPUzwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclBsYXRmb3JtPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclVUST5jb20ucGl4ZWxtYXRvcnRlYW0ucGl4ZWxtYXRvci5kb2N1bWVudC1wcm8tc2lkZWNhci5iaW5hcnk8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJVVEk+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPjE3MDYyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyUHJvY2Vzc0lEPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+MjwvUGl4ZWxtYXRvclRlYW06U2lkZWNhclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyV3JpdGVyQnVpbGQ+ZDA4NzlkNDwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlckJ1aWxkPgogICAgICAgICA8UGl4ZWxtYXRvclRlYW06U2lkZWNhcklkZW50aWZpZXI+NEY3MDA5NzItNzY1NC00NUFCLUEwMTgtOTdDNTE4NjZCMDkzPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FySWRlbnRpZmllcj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj5pQ2xvdWQ8L1BpeGVsbWF0b3JUZWFtOlNpZGVjYXJMb2NhdGlvbj4KICAgICAgICAgPFBpeGVsbWF0b3JUZWFtOlNpZGVjYXJXcml0ZXJWZXJzaW9uPjMuNi4xODwvUGl4ZWxtYXRvclRlYW06U2lkZWNhcldyaXRlclZlcnNpb24+CiAgICAgICAgIDxQaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPjRGNzAwOTcyPC9QaXhlbG1hdG9yVGVhbTpTaWRlY2FyU2hvcnRIYXNoPgogICAgICAgICA8eG1wOkNyZWF0b3JUb29sPlBpeGVsbWF0b3IgUHJvIDMuNi4xODwveG1wOkNyZWF0b3JUb29sPgogICAgICAgICA8eG1wOk1ldGFkYXRhRGF0ZT4yMDI1LTEyLTA2VDEzOjI5OjEwKzAxOjAwPC94bXA6TWV0YWRhdGFEYXRlPgogICAgICAgICA8eG1wOkNyZWF0ZURhdGU+MjAyNS0xMi0wNlQxMzoyODo1MyswMTowMDwveG1wOkNyZWF0ZURhdGU+CiAgICAgICAgIDx0aWZmOlJlc29sdXRpb25Vbml0PjI8L3RpZmY6UmVzb2x1dGlvblVuaXQ+CiAgICAgICAgIDx0aWZmOk9yaWVudGF0aW9uPjE8L3RpZmY6T3JpZW50YXRpb24+CiAgICAgICAgIDx0aWZmOllSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WVJlc29sdXRpb24+CiAgICAgICAgIDx0aWZmOlhSZXNvbHV0aW9uPjMwMDAwMDAvMTAwMDA8L3RpZmY6WFJlc29sdXRpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWURpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFlEaW1lbnNpb24+CiAgICAgICAgIDxleGlmOlBpeGVsWERpbWVuc2lvbj4yNDwvZXhpZjpQaXhlbFhEaW1lbnNpb24+CiAgICAgIDwvcmRmOkRlc2NyaXB0aW9uPgogICA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgoMj2SYAAAC00lEQVQ4EU3VTVIbQQwFYP+Mf6AKClbJOkvOkxwluUCySI6T40BV1gkrFhQYjz12PvUzU1a5hFotPT2pe5rp3d3dfD6fTCbDMKxWK8Z0Oo0+HA6xj8cjI9oWYdPb7XY2m9mS27EuLy8tNpvNfr8XQZLfUgo3TpHZGgssFov1ei3g+fnZbkHaC4rkeJIfzXm+HJ2ISLSrp2632728vCjFhVqq0eCipQllj3CM2G9N5Fp2FxcXfd9bIPnpw8ebm5uu6yRHRASiUpuIJJxPT09//v01JpHL5bJyBCTt9va2Zv8+coRJpQ2DAHXlWxr10PcPDw+Ayt9m2tXGu7Bni8Xvb1/R7AzL6agxmeybAWNgHw6b7fbLz18j02AV0IjKNj09rpbLxXTqVygY4eJ+0Mdjj1Q7ENXFkzRUx58FbTq6lYyLniu0dS1fAzzuVa7WeLJqkcoNSprjKtwcdisIDBfU5CeyyrTkMArKCcgf62CxLQbDao3EX87GLhD1HbT4XJG2mpppyXmDuWQGTLRTIJi2qWM3ZzdnAz8dN1tALdxR2uVkiGsgNaA6mvclb21Ieh9wM0vJDdkaTRB5d+1ga8Ag/Fqabbhl89bG6ciSKKuGTU4UWrKl7kZeikiDWzEQHH+7lsoBpGGR080+BzIISfgwhLKrfqMg7bTbvhIlK6BJDTvA0ZvXVxdPd5LTraWtqiT5eHQ/Xe79MPh6Uj4IJ0a4weVivG23VYMFsc2ojgmOjtrN2PY9FOgpgKXwmlHjexre7u3t8/cfEFfrNZ3TTMyi68wOt3nXHfs+QHQ+7AIKHS4vw/39fTjT/GrQI5yYRrSafXx8lKuYGMupd4P2lXkhfa7Zs03Ythj06D+382aDdgFr2NfX17R314OXzCSnZXZYBGtET8zV1ZUwJGYZG/Jj3JifUCgjHR5iOcakazEdFy7ZyL+j1ESNMwSjz+ESo4O89wL+A9Z0hvT8q0StAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:font/pack_icon`

  <details>

  ![texture.png](data:image/png;base64,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)

  </details>

- `@texture cable:font/table`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALAAAACwCAMAAACYaRRsAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAPUExURcbGxjc3N4uLi////wAAABWoS48AAAAFdFJOU/////8A+7YOUwAAAAlwSFlzAAAOwgAADsIBFShKgAAAAZVJREFUeF7t1+GOgjAQAGFPff9nvlbXYhETapjAkpmEuCGw953hh1zuyRJMlxJ8SZNgOsF0gukE0wmmE0x3dvDfvGt8Ti2ciZs3aRRcru26rTkTN29S2Sc4hpbgeqxM8HBln+AYWoLrsTLBw5V9gmNonQ8cv+o+W/idV/YdAHz90sKdZd+pwdfbvDVn4uavkd/wvE3eOI7/SMz+hQc4Lm4dC9yLM4A7cQrwuzgH+E2cBDyJjwiuf/6j585E4JfYb3jqZ3BfxRz8Ge6rmMmbBBxjLQU4pkcZwDE8SwCOz+j44Fkg2DeORyS4XNu13SOxlOCNwJ9P/au44K2yb3/wSGWf4BhaguuxMsHDlX2CY2gJrsfKBA9X9gmOobUnmHnjGGkQvH8BTpVgOsF0gukE0wmmE0wnmE4wnWA6wXSC6QTTCaYTTCeYTjCdYDrBdILpBNMJphNMJ5hOMJ1gOsF0gukE0wmmE0wnmE4wnWA6wXSC6QTTCaYTTCeYTjCdYDrBdILpBNMJphNMJ5hOMJ1gOsF0gtnu939fgV2s/CF+rwAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:font/wrench`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAAAkCAMAAABBj89wAAAAElBMVEUAAAD/VVU3Nzdy/1T8/Pw+Pj4CS+qTAAAABnRSTlMA//////96eeD+AAAAZklEQVR4nO2UQQ7AIAgEF6r//3IL1p4xYQ9NdgIGLw4HEBBCCCGEaMHIwJyKwf0i4g7q+4+hKhjBrjO6BTPYdUS3IPtfyRFk/yOTJNjnvwU5TPNkjOp78La8Zml+94KAvcng/kW4Ac99Do5RnSggAAAAHXRFWHRTb2Z0d2FyZQBAbHVuYXBhaW50L3BuZy1jb2RlY/VDGR4AAAAASUVORK5CYII=)

  </details>

- `@texture cable:gui/item_cable`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALAAAACwCAMAAACYaRRsAAAA/1BMVEUAAADGxsYAAACqqqqnp6dvb29ubm5sbGxxcXFoaGhSUlJra2ttbW1VVVWoqKhwcHA1SzFpaWlUVFQ/Pz9dlE1Si0RZWVlqamqmpqZWjUZclU5WjEtWVlZViUNzc3NUi0RTjEVVi0p1dXVYjEZVjkFZj0ZUjUZTiUirq6takEdelktXj0ZXjUxPT09ak0xRh0Z3d3d2dnZQhEZ0dHRYWFhQUFBTU1NMTExaWlpeXl47URqiRESZVzlGYR9bbM7NV102ZpbDOjqzMSzErjrEhzrWOjTn56////+HKCiBcFY0LSODclg6MymNfGI4MSeFdFpaTz01LiSGdVszLCIvKB5TRneGAAAAVXRSTlMA////////////////////////////////////////////////////////////////////////////////////////////////////////////////rSI8eAAABERJREFUeJztmQmT2zQAhZuksg3rxdqYYwsmbTnKFlhaoCywKcrRLkc5WqD//7egy7JsOU5iWUMy877pJB118/RVqzh+0a1bABw/o6MBwqGBcGggHBoIhwbCoYFwaCAcGlt43KBv5lA5rdSEJ4Lbt+XThPQXHiinlbowkURxEpM33vQQHianlbpwdMLnSRMxW3zqITxMTis14bdIFkeEz0MpPZvyifI83/zSjf9U5XDrMqdKan9dx0SbhSckS074RPTtd2j07nhLzGbhMid9LyIyJ9/+ul7C5xGhhCT0zvsf0LTQwnpx1JN6GJm/tgvzHE5CTvizzNERI/XaXCeM8uqx83e5UXgS0Q/pjN69d5/GxAiracwyaN3OFY5iksxmWfYRUTn6R3MdUCbUhnbzbQjTjz/5lN558BmdkYawWYc8r6bfKBxH6ZlY5UznlD+aj2p2O6V1CV8Q+vDzL+59yfdFdnZZFx7V17lT+EJc0zJ5aVM5zgqbAM8VjjJ696tH3Dclcbn3zM4zO7m2Xm3CPOdxMvs6s3NMUvUft98XOxs7Hxz0Gxrza1L67RPPD46M+Oa04ggnNOMXz7M0vfQTTjLvnFZqwrOimH5XFFfTq6vvi6K/8EA5rdSE06L44ccnxenV6bQoPO4lBspp5ahvL4+CoxYOtyV2GekjHKxx7DLSS/jawqdxNHPcDjKezJ9W7DFXQ/inkutrn8bRzCk7CDMdhI9Uxvu0knrjsCeaypufbUWhVdjJER1kETHGTAcRI6WxGukjLFeG/xblY9kUtt3qtAg7ObKDLLgwKzuIHFHGeqSP8Lk9kX3jXd5wW4WjS9jJER2EsUXCTpjuIKqVzKWvGukjPGkXNreEtcLRIezkiA7Cktkiy5juILqVzJ+aVtJXWL21O4W3Zbo5ooMw3kEWhOkOolvJcm5aSR/hC3uiy7FtuJewkyM7COPLu2C6g6hWslxy47Ld9BB2VsbutVWx2yrcssKig4g33UJ3EDmyFMz1SD9hOYWazqdxNHN0B2FVBxEjy6U23qeVbP6k82kczRzdQVjVQfjIshSe79NK6o3DnsincTRz3A4yni0r5n23RLDGsctIH+Fju708CiA8GnQDuAQRHq5fuIQRlvVitbL6xdrC65uKMMKiX6yePV9V/WJ9c3PDXeWj16lHEGF5xrH6+ZdV1S9s4T36hUugLSHOOFa/plW/sLfEHv3CJYiwOuP47YU54xif87VVy8v/eH09GGgPizbx+x+mTcg9fMjCsk38+ZdpE/U33eEJqzOOly/MGcf4Yi1913KFvb7iDrQlxBnHq7/NGYfaEqXw4a2w6hf//Gv1C7EZFOu116lHMOEke/Xa6hf2Ze3wtkRLv7CFD29LDNcvXHB7GZpjFQYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBOxv+3AAAAAAAAAAAAAAAAAAAAAACG/wBNX/4sV0Ur1wAAAB10RVh0U29mdHdhcmUAQGx1bmFwYWludC9wbmctY29kZWP1QxkeAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:gui/redstone_io`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAALAAAACwCAMAAACYaRRsAAAAtFBMVEUAAADGxsYAAACqqqqnp6dvb29ubm5sbGxxcXFoaGhSUlJra2ttbW1VVVWoqKhwcHA1SzFpaWlUVFQ/Pz9dlE1Si0RZWVlqamqmpqZWjUZclU5WjEtWVlZViUNzc3NUi0RTjEVVi0p1dXVYjEZVjkFZj0ZUjUZTiUirq6takEdelktXj0ZXjUxPT09ak0xRh0Z3d3d2dnZQhEZ0dHRYWFhQUFBTU1NMTExaWlpeXl47URpGYR+8LKT1AAAAPHRSTlMA///////////////////////////////////////////////////////////////////////////////3/30AAAADPUlEQVR4nO2Z6XabMBBGg4mA1rjIpkvSqk7S1V3SNXVb9/3fq2IXICMwI1rO+e4P2/EJ39wjY9B4zs4AmD/ObICwbSBsGwjbBsK2gbBtIGwbCNtGFV40ODWTKkdLTdhNOD9Pn1x2ujBRjpa6MEvx/MBn9+6PEKbJ0VIX9payThgk1fzVCGGaHC014Qcs8j0m63DO1xtZKI5j3UHaNxXhMkdapzm1oObRhrQuYZdFwVIW4g8fce/x4miYSbjICZ94LM2J1YMIhS88xhkL+OXTZzwUuXCcrk7sZI/Zq+4aSY4kYEv5nObkx5VHD0nrEnY9/pxv+dX1DfdZKexUunH1Vpew6/ks2G6j6AXLclThbBH6p3UK85evXvPLN2/5ljWFnSHCvheuk1WO8pyW8IC0LuEd4+/ef7j+KM+LaH3bWOHqQzQK75JrWpRe2rKc9gr3T+sSdr2IX336LH1D5ov8KlEVc4pKhhpJzpdg+zUqc/ITtTx6SFqnsFwS/o378poUfr+rXT+HhGY3jojpcoanmYQDHsmL5zoMb8fd6YJodI6WmvBWiM0PIfab/f6nEKcLE+VoqQmHQvz6fSdW+9VGiBF7CaIcLbPeXs6CWQvP7pSYYcdxUBjTcdDkaGkI/yk4HMZ0HDQ5Wuodh1qo2Sn0v51S5ZiF05WRn2L62OwUBggT5ZiFL9RCxT7Wydcnrl4YOw6aHLOwqy9UbgnV5qNLmCinn3D21e4sZMqkyjEL79RCzU5hgDBRjlm4tTJVp+AUrU2Pj5Eqp49wWiIrp+sU+kGVo+X4nW5Mx0GTo6XecaiFxnQcNDla0HEQ5miZ9QZ+FtgQnt0pMVnHQcVkMw4qJptxUKGfcfTYPcTFr6UdWDolNDMOxyjcazdkRbg148i3Z+V0o/xb+dXYqTZx2Urrhx+WzuHGjCO1aU03ar/LO8V/6d+3LNyccSjCxev/SvjIjEMvXH32VUdSjSqmET4246hNN9Tmv/nu5KeEacah0v5yHfm6ZVgTnmLGQcVkMw4qJus4qJjd9tIqcxUGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAThb/WgAAAAAAAAAAAAAAAAAAAACAkr/XAa9H2BQB9gAAAB10RVh0U29mdHdhcmUAQGx1bmFwYWludC9wbmctY29kZWP1QxkeAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:item/goggles`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAIVBMVEUAAAB7VjpNLxWVaUiYa0nlzHvRo1z675WCTTpHgI1xoq5bE8OIAAAAC3RSTlMA/////////////312fdUAAABQSURBVHicnYtLFsAwCAKjRYO5/4EbTT/Ztiwc4ElrPyWqIrLH1HFXmZNZtWXe17wwAGUw7aSjd4NqwWfBHhHOBdQkxnBeyC3djA+qITd81wnR0AHllquNFgAAAB10RVh0U29mdHdhcmUAQGx1bmFwYWludC9wbmctY29kZWP1QxkeAAAAAElFTkSuQmCC)

  </details>

- `@texture cable:item/yeta_wrench`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAB20lEQVR42qRTa08TQRQ9d98tdbdsyytGY2qQIiy0xhg/+Rf4C/xZPhCNtYQICJFA+KDbB48trCi748yU2XaL8Qs32czM3rnnnnMmlxhjeEwYapOmKTRNyyXFPyKSn/e6xizLgum5uLsjCre2RwCChShOkuQBiIjKWp0RabDKLr9rkq6PWMvbooMA0XU924tVhB8s8iPJ4jQ1SOVebW6wHIPxIsViuJqwp8s8p5Fi6jzzWL/1bSRBFQoJgoXyQxnM2C9YM2V+KJFtg3VaezAMcyRBFCqzVBelvVh1MfXiqcxxbNbZ+cpXDX6zSRmDccqiu4iZxiorVFw4c/NI4hiDwzPBFY7joLRYp86nL/9+RvH5wTIzvSKe1Gq4PDrB74s+uu0DmjQ4B6C6zzYDZk8XYM96uDk5RhJdoby8QsoPxVB4lXlQWVuRh+r6Ki8uwV96jvjHNQZhH26wTr3dPdlg6MPwqRVQhuwHdU67gOJCFbfhOeJexDvX6XL/kDtu4OfndkY99+T3DJjh2lzzS/zpXuC608Pcu7d0dXAkO4etnZzu8fmRAIY7hXCrTdH3U9ye36AaNCj82JIXu+3d/w6TBEgHMRY+vGdJFKHypiFpK72T5k3OCz12nP8KMAC8UNp/rj6laAAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:sprites/box`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAABH0lEQVQoFZXQza2DMBAE4GBIQDmkd9pIHxxSCRINQH55n99aCOUWS1i7M7szgw+HH09l/nq97rfe77e2rus9qB6Goe/7JlDNF72u6+fzOR6Pz+fT8v1+n6bJTIo59Ov12naMGnKigDdNoy0L0KqqiAljM2jgfn+jskNKxSd29nPykDCAcrKWT5gQdrPeL2iZQ1DxGFk7hkqfkpZkhGzb1gBqS1H0JAa5H48H61A1KtLeE5Id0F7AHVk3MZQkAqMIedmyAHWgXdflt6xrSbRohy02QG2JhIYuywJSUN1+KaLSCufyoFnq/wRqn6TbPwiDkWeeZ0V2uN1u4zgquNM+nU5qDmGrNn0+n+PFskNoKIxeLpdinZJsamumsbTcP58/Dxa+4ialpvQAAAAASUVORK5CYII=)

  </details>

- `@texture cable:sprites/box_checked`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAABk0lEQVQoFZWR20oCURSG5zxi4EXiXSdLwwcIigwz8abH8zV8hUDFNPENorITOUMjXXSRMjPOTN9mDybducFh7fUf1r+2irLhUeG32+11VRRFXHVdX29SD4fDVqtlyC6Xf3CSJHEcm6YZhiFi3/c9z4OjSR7wcrlcaaBC4siCvmEYXEXBj66qqpih0TSNGpgm0N1Tny/nZO8MUwoxAZLoKQoauYC8wq5c7+zW8xICpRBUjFFzBg89vFfsYqOQME216YBKLyGQJPwOatt8uaLcr+ejJPHny5euc1qsrlKkYUaT26OrgmLGpWahf9/Bm6BKpL/23FqlIdeVk4WALc9LtUl3ZmqWaZuHzQLeumK99z/pExhCEAS8LGQhEPGTpFq+fLzx5j++blhxqD53prBBeS5Qhti2WCaNhAddGG+9r/l38DGYkZstaZIeTSaTkWukAqTyXBzXp6MZ07DEhb+ZMEDkWSwWFOIRx+Ox67oUOJG4uFV2HAd7OVays9nsXyTpAWBZVi6XS0drmsyDDDYoXnw3Pr/mZtyk7wF0KAAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:sprites/box_round_robin_off`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAABR0lEQVQoFZWQu0rEUBCGNxdJxC6ispVio+yFLdbF9/A5fJkFq32EFFb22gQNeEE05AGsLEQbyW2T+J2dQwgRhZ1iOPOf/5uZc3q9NcPA7/t+myrLktKyrLbIOQiC+Xxui5ouFsn2d8fRKd+KPoop6v1gsPmx1XG0y5edqcxUQFVVhmE8jkZ/Ma+7J+xZ1zVmBZimnvM0Hv9mor0Zho1VaGC5XEITjHoYDtsMbobj41Y+Q/W2bfV0XZvm82QiTNw/dRxHrpot9DL0RiKnaVoUxcXhGQxdOdOu/cUKYCgSWXa9S48RYaZRBMPCXOV5nmUZugJQCVTXdcWNSAjDWG7pKOvplXCjXn/ui7XJMLM4hqGXPEMDOG6To8bXOcCwT5Ik6Op/wjD8x80QPOfx5bvnaYAHHXzdqGIVlLI3mTVYlXzlebwez9rxA8+RqpbYakH6AAAAAElFTkSuQmCC)

  </details>

- `@texture cable:sprites/box_self_feed`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAABcklEQVQoFZWSzU7CQBSF22lLmy6IGEBjfDQBTfQB9ClcafoAmoDGBe/BgvcwVsuP0Q2U/ozf5E4a4kpn0Zy555x7zx1wnH8eF/10Ot13VVXF1fO8/SJ4NpslSeJLlcsvWmtd13UQBEVRYM7zPMsyNEp00GVZNh6kq/ocHUBG+b4vwBiouq5Ls+H7GueyGq31RWMWATmhwMaglJ3zfNIdfXw2UpzkQYeAdhxrIAxVTlYM7nrXN4v7fvAEd6AfvtQlw8Gw8himN/n4yh3py2n/7G3Z8yfSUqgmhQ3DGlLabrfEmBwfDtIVXaWdrAvmGANDKfHteuNv7won6fHwBrAEhtrtdrysNZj4WlONoohIi3IIgUf2YTgsHcMwpG5/ONRUyUOJ9Hg6ziN4fNRRrouHXpLZ7gAnp1lOQrIPYaDIs9lsAGbCfD5P0xRAJxK3Wi3HuX2tKhkr6jiOJZKZID0ASNvtth2tFCHB2FDD7v93uP71/ABg5NbMcP3piQAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:sprites/color_green`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAAA3ElEQVQoFZWRPQ6DMAyFCRAxdOnWoRfp0EP1KjkFEvdg4DZdKgTlp5/lKklBhdaD9Z7jF784SfJnGPqrqopV4zhCsyyLi+C6rp1zuVZdeVscr+nJXCi+BaDD0a6btPK4PwE6MwVN0/StNa7P8wyVCWkqMh96H3Qx01qxIK3DMPjuDaDLEEGeh5dsCPTowwwl70dxTIPAGPmN3ei6jh6ZoM/fFRRFQU9wr9PZjLehW/JUlxkEOsEfQ2MMbduWLJaapiHvRrDU9/3ZXhGwXwLK3/MwMjYAaubH71oOfgGGHFUFSy4xZwAAAABJRU5ErkJggg==)

  </details>

- `@texture cable:sprites/color_orange`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAAAAXNSR0IArs4c6QAAAERlWElmTU0AKgAAAAgAAYdpAAQAAAABAAAAGgAAAAAAA6ABAAMAAAABAAEAAKACAAQAAAABAAAAEKADAAQAAAABAAAAEAAAAAA0VXHyAAAA20lEQVQoFZVRsQ2DMBDEGERHkTo7ZIbMk2ncZoLIe7hwEykLpEkmSINAGLjXR49lRAgv2bq//7Pv7SzbGQr91tpYFUJAqrWOSWDnnDGmYPb8vCblZXp71SDzpPB4f4QBjlO+kwTDMEjTDzCOI6pkKc9JxoedjrWcCsw8g7IsqRmr73vsm8GPQYKi+I6+qaHmZRMbWPLMkEAp+g2JZAbh27YFJks8vhTWQFVVKO2wxI85C9asC980DW4gS977NRsxP1vquu5yP6CG90Ugxd9jMOywAcBm/vyu+A7CE2YYT2n+feVDAAAAAElFTkSuQmCC)

  </details>

- `@texture_mcmeta(strip_final_newline) cable:block/ender_fluid_cable`

  <details>

  ```
  {
    "animation": {
      "width": 16,
      "height": 64,
      "frametime": 2,
      "frames": [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        18,
        17,
        16,
        15,
        14,
        13,
        12,
        11,
        10,
        9,
        8,
        7,
        6,
        5,
        4,
        3,
        2,
        1
      ]
    }
  }
  ```

  </details>

- `@texture_mcmeta(strip_final_newline) cable:block/item_cable`

  <details>

  ```
  {
    "animation": {
      "width": 16,
      "height": 64,
      "frametime": 2,
      "frames": [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        18,
        17,
        16,
        15,
        14,
        13,
        12,
        11,
        10,
        9,
        8,
        7,
        6,
        5,
        4,
        3,
        2,
        1
      ]
    }
  }
  ```

  </details>

- `@texture_mcmeta(strip_final_newline) cable:block/item_core`

  <details>

  ```
  {
    "animation": {
      "width": 24,
      "height": 24,
      "frametime": 2,
      "frames": [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        18,
        17,
        16,
        15,
        14,
        13,
        12,
        11,
        10,
        9,
        8,
        7,
        6,
        5,
        4,
        3,
        2,
        1
      ]
    }
  }
  ```

  </details>

### minecraft

- `@fragment_shader minecraft:core/rendertype_item_entity_translucent_cull`

  <details>

  ```glsl
  #version 150

  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>

  uniform sampler2D Sampler0;

  in float sphericalVertexDistance;
  in float cylindricalVertexDistance;
  in vec4 vertexColor;
  in vec2 texCoord0;
  in vec2 texCoord1;

  out vec4 fragColor;

  flat in int isLine;

  void main() {
      if (isLine == 1) {
          fragColor = vertexColor;
          return;
      }
      vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
      if (color.a < 0.1) {
          discard;
      }
      fragColor = apply_fog(color, sphericalVertexDistance, cylindricalVertexDistance, FogEnvironmentalStart, FogEnvironmentalEnd, FogRenderDistanceStart, FogRenderDistanceEnd, FogColor);
  }
  ```

  </details>

- `@vertex_shader minecraft:core/rendertype_item_entity_translucent_cull`

  <details>

  ```glsl
  #version 150

  #moj_import <minecraft:light.glsl>
  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>
  #moj_import <minecraft:globals.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in vec2 UV1;
  in ivec2 UV2;
  in vec3 Normal;

  uniform sampler2D Sampler0;
  uniform sampler2D Sampler2;


  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;
  out vec2 texCoord1;
  out vec2 texCoord2;

  flat out int isLine;

  const float VIEW_SHRINK = 1.0 - (1.0 / 256.0);
  const mat4 VIEW_SCALE = mat4(
      VIEW_SHRINK, 0.0, 0.0, 0.0,
      0.0, VIEW_SHRINK, 0.0, 0.0,
      0.0, 0.0, VIEW_SHRINK, 0.0,
      0.0, 0.0, 0.0, 1.0
  );

  void main() {
      vec4 color = textureLod(Sampler0, UV0, 0);
      float LineWidth = 2.5;
      isLine = 0;
      if (int(round(color.a * 255.)) == 251) {

          ivec2 coords = ivec2(UV0 * textureSize(Sampler0, 0));

          vec4 widthColor = texelFetch(Sampler0, coords + ivec2(4, 0), 0);
          if (widthColor.a > 0.5) {
              LineWidth = dot(widthColor.rgb, vec3(1.0, 1./256., 1./65536)) * 255.;
          }

          isLine = 1;
          vec3 N = (color.rgb - 127./255.) * 2.;
          if (abs(N.y) < 0.1) {
              N = vec3(-Normal.z, 0.0, Normal.x);
          }
          vec4 linePosStart = ProjMat * VIEW_SCALE * ModelViewMat * vec4(Position, 1.0);
          vec4 linePosEnd = ProjMat * VIEW_SCALE * ModelViewMat * vec4(Position + N, 1.0);

          vec3 ndc1 = linePosStart.xyz / linePosStart.w;
          vec3 ndc2 = linePosEnd.xyz / linePosEnd.w;

          vec2 lineScreenDirection = normalize((ndc2.xy - ndc1.xy) * ScreenSize);
          vec2 lineOffset = vec2(-lineScreenDirection.y, lineScreenDirection.x) * LineWidth / ScreenSize;

          float topDownZ = dot(vec2(-ModelViewMat[2][0], ModelViewMat[0][0]), Position.xz);
          if ((topDownZ > 0.0) ^^ lineOffset.x < 0.0) {
              lineOffset *= -1.0;
          }

          bool dir = (abs(N.y) > 0.1 && gl_VertexID % 4 == 2 || gl_VertexID % 4 == 3)
                  || (abs(N.x) > 0.1 && gl_VertexID % 4 == 0 || gl_VertexID % 4 == 3)
                  || (abs(N.z) > 0.1 && gl_VertexID % 4 == 0 || gl_VertexID % 4 == 3);

          if (dir) {
              gl_Position = vec4((ndc1 + vec3(lineOffset, 0.0)) * linePosStart.w, linePosStart.w);
          } else {
              gl_Position = vec4((ndc1 - vec3(lineOffset, 0.0)) * linePosStart.w, linePosStart.w);
          }

          vertexColor = Color * texelFetch(Sampler0, coords + ivec2(2, 0), 0);
          return;
      }
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);
      vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * texelFetch(Sampler2, UV2 / 16, 0);
      texCoord0 = UV0;
      texCoord1 = UV1;
      texCoord2 = UV2;
  }
  ```

  </details>

- `@vertex_shader minecraft:core/entity`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:light.glsl>
  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in ivec2 UV1;
  in ivec2 UV2;
  in vec3 Normal;

  uniform sampler2D Sampler1;
  uniform sampler2D Sampler2;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  #ifdef PER_FACE_LIGHTING
  out vec4 vertexPerFaceColorBack;
  out vec4 vertexPerFaceColorFront;
  #else
  out vec4 vertexColor;
  #endif
  out vec4 lightMapColor;
  out vec4 overlayColor;
  out vec2 texCoord0;


  uniform sampler2D Sampler0;
  #moj_import <minecraft:invisibleminecarts.glsl>

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position , 1.0) * int(!IsValid());

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);

      vec2 textureSize = textureSize(Sampler0, 0);

  #ifdef PER_FACE_LIGHTING
      vec2 light = minecraft_compute_light(Light0_Direction, Light1_Direction, Normal);
      vertexPerFaceColorBack = minecraft_mix_light_separate(-light, Color);
      vertexPerFaceColorFront = minecraft_mix_light_separate(light, Color);
  #elif defined(NO_CARDINAL_LIGHTING)
      vertexColor = Color;
  #else
      vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
  #endif
  #ifndef EMISSIVE
      lightMapColor = texelFetch(Sampler2, UV2 / 16, 0);
  #endif
      overlayColor = texelFetch(Sampler1, UV1, 0);

      texCoord0 = UV0;
  #ifdef APPLY_TEXTURE_MATRIX
      texCoord0 = (TextureMat * vec4(UV0, 0.0, 1.0)).xy;
  #endif

      //texCoord0 = UV0 + Normal.xy;
  }
  ```

  </details>

- `@vertex_shader minecraft:core/rendertype_entity_shadow`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>


  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;

  uniform sampler2D Sampler0;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;

  // bool IsMinecart() {

  //     vec2 defTextureSize = vec2(64.0,32.0);

  //     bvec4 checkEmpty = bvec4(
  //         texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
  //     );

  //     bvec4 checkValid = bvec4(
  //         texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
  //     );

  //     return all(checkEmpty) && all(checkValid);
  // }

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);
      vertexColor = Color;
      // if (Color == vec4(123./255., 123./255., 0., Color.a)) {
      // if (IsMinecart()) {
      //     vertexColor.a = 0.0;
      // }

      texCoord0 = UV0;
  }
  ```

  </details>

- `@vertex_shader(strip_final_newline) minecraft:core/rendertype_text`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in ivec2 UV2;

  uniform sampler2D Sampler2;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);
      vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
      texCoord0 = UV0;

      if (Color == vec4(123/255., 123/255., 0, Color.a)) {
          vertexColor = texelFetch(Sampler2, UV2 / 16, 0);
          vec3 newPos = vec3(Position.x, Position.y, Position.z + 200.0);
          gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
          // gl_Position = vec4(2,2,2,1);
      }
  }
  ```

  </details>

- `@vertex_shader(strip_final_newline) minecraft:core/rendertype_text_see_through`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;

  out vec4 vertexColor;
  out vec2 texCoord0;

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      vertexColor = Color;
      texCoord0 = UV0;

      if (Color == vec4(123/255., 123/255., 0, Color.a)) {
          vertexColor.a = 0.0;
      }
  }
  ```

  </details>

- `@glsl_shader minecraft:include/invisibleminecarts`

  <details>

  ```glsl
  #version 330

  bool CompareVec3(vec3 val1,vec3 val2,vec3 maxdiff) {

      return all(lessThan(abs(val1 - val2), maxdiff));
  }

  bool IsMinecart() {

      vec2 defTextureSize = vec2(64.0,32.0);

      bvec4 checkEmpty = bvec4(
          texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
      );

      bvec4 checkValid = bvec4(
          texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
      );

      return all(checkEmpty) && all(checkValid);
  }

  bool IsValid() {

      return (
          IsMinecart() &&
          (
              CompareVec3(normalize(abs(Normal)),normalize(vec3(1.025,0.5,0.45)),vec3(0.01)) ||
              CompareVec3(normalize(abs(Normal)),normalize(vec3(0.3,0.75,0.135)),vec3(0.01)) ||
              CompareVec3(normalize(abs(Normal)),normalize(vec3(0.435,0,0.985)),vec3(0.01))
          )
      );
  }
  ```

  </details>

### wireframe

- `@item_model(strip_final_newline) wireframe:wireframe_black`

  <details>

  ```json
  {
      "model": {
          "type": "minecraft:model",
          "model": "wireframe:item/wireframe_black"
      }
  }
  ```

  </details>

- `@item_model(strip_final_newline) wireframe:wireframe_white`

  <details>

  ```json
  {
      "model": {
          "type": "minecraft:model",
          "model": "wireframe:item/wireframe_white",
          "tints": [
              {
                  "type": "minecraft:custom_model_data",
                  "default": [1, 1, 1]
              }
          ]
      }
  }
  ```

  </details>

- `@item_model(strip_final_newline) wireframe:wireframe_white_thick`

  <details>

  ```json
  {
      "model": {
          "type": "minecraft:model",
          "model": "wireframe:item/wireframe_white_thick"
      }
  }
  ```

  </details>

- `@model(strip_final_newline) wireframe:item/wireframe_black`

  <details>

  ```json
  {
      "parent": "wireframe:item/wireframe_template",
      "textures": {
          "0": "wireframe:item/wireframe_black"
      }
  }
  ```

  </details>

- `@model(strip_final_newline) wireframe:item/wireframe_template`

  <details>

  ```json
  {
      "elements": [
          { "from": [ 0, 0, 0], "to": [16.000001, 0.000001, 0.000001], "faces": { "north": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 }, "south": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0,16, 0], "to": [16.000001,16.000001, 0.000001], "faces": { "north": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 }, "south": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0, 0,16], "to": [16.000001, 0.000001,16.000001], "faces": { "north": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 }, "south": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0,16,16], "to": [16.000001,16.000001,16.000001], "faces": { "north": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 }, "south": {"uv": [1.5, 1.5, 2.5, 1.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0, 0, 0], "to": [ 0.000001,16.000001, 0.000001], "faces": { "south": {"uv": [1.5, 2.5, 2.5, 2.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [16, 0, 0], "to": [16.000001,16.000001, 0.000001], "faces": { "south": {"uv": [1.5, 2.5, 2.5, 2.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0, 0,16], "to": [ 0.000001,16.000001,16.000001], "faces": { "south": {"uv": [1.5, 2.5, 2.5, 2.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [16, 0,16], "to": [16.000001,16.000001,16.000001], "faces": { "south": {"uv": [1.5, 2.5, 2.5, 2.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0, 0, 0], "to": [ 0.000001, 0.000001,16.000001], "faces": { "east": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 }, "west": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [16, 0, 0], "to": [16.000001, 0.000001,16.000001], "faces": { "east": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 }, "west": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [ 0,16, 0], "to": [ 0.000001,16.000001,16.000001], "faces": { "east": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 }, "west": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 } } },
          { "from": [16,16, 0], "to": [16.000001,16.000001,16.000001], "faces": { "east": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 }, "west": {"uv": [1.5, 3.5, 2.5, 3.5], "texture": "#0", "tintindex": 0 } } }
      ]
  }
  ```

  </details>

- `@model(strip_final_newline) wireframe:item/wireframe_white`

  <details>

  ```json
  {
      "parent": "wireframe:item/wireframe_template",
      "textures": {
          "0": "wireframe:item/wireframe_white"
      }
  }
  ```

  </details>

- `@model(strip_final_newline) wireframe:item/wireframe_white_thick`

  <details>

  ```json
  {
      "parent": "wireframe:item/wireframe_template",
      "textures": {
          "0": "wireframe:item/wireframe_white_thick"
      }
  }
  ```

  </details>

- `@texture wireframe:item/wireframe_black`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsEAAA7BAbiRa+0AAABGSURBVDhPY2RgYPgPxBSB///r638zgDADQxoUEwv+M4HIhgYGhvpGsADJAGwARSYAASVhAPECJWDUgFEDQIBiAyjMzgwMANiyD9KrZ+vSAAAAAElFTkSuQmCC)

  </details>

- `@texture wireframe:item/wireframe_white`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsIAAA7CARUoSoAAAABJSURBVDhP7ZNbCkAhCESnS/vWu+/AdNpANb8d8IEfBxRsACLjGgrCbLBx7xwmVTeIr7I7YD8Hx1AgGRLlBmsFhSd4gkIWiO8MTBjIDxcOgpsyAAAAAElFTkSuQmCC)

  </details>

- `@texture wireframe:item/wireframe_white_thick`

  <details>

  ![texture.png](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsEAAA7BAbiRa+0AAABOSURBVDhP7ZNBCsAwCAS3JX23m38HTNzeA+1eM6AkCgMKXgByxW8kyIihB9mq+PT6AYPq78i7MglEV+EzEliGhbODdwSHIziCwhaY5wxMgEkRF0cYpMYAAAAASUVORK5CYII=)

  </details>

## Overlay `Invisible Minecarts`

`@overlay Invisible Minecarts`

### minecraft

- `@vertex_shader minecraft:core/entity`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:light.glsl>
  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in ivec2 UV1;
  in ivec2 UV2;
  in vec3 Normal;

  uniform sampler2D Sampler1;
  uniform sampler2D Sampler2;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  #ifdef PER_FACE_LIGHTING
  out vec4 vertexPerFaceColorBack;
  out vec4 vertexPerFaceColorFront;
  #else
  out vec4 vertexColor;
  #endif
  out vec4 lightMapColor;
  out vec4 overlayColor;
  out vec2 texCoord0;


  uniform sampler2D Sampler0;
  #moj_import <minecraft:invisibleminecarts.glsl>

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position , 1.0) * int(!IsValid());

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);

      vec2 textureSize = textureSize(Sampler0, 0);

  #ifdef PER_FACE_LIGHTING
      vec2 light = minecraft_compute_light(Light0_Direction, Light1_Direction, Normal);
      vertexPerFaceColorBack = minecraft_mix_light_separate(-light, Color);
      vertexPerFaceColorFront = minecraft_mix_light_separate(light, Color);
  #elif defined(NO_CARDINAL_LIGHTING)
      vertexColor = Color;
  #else
      vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color);
  #endif
  #ifndef EMISSIVE
      lightMapColor = texelFetch(Sampler2, UV2 / 16, 0);
  #endif
      overlayColor = texelFetch(Sampler1, UV1, 0);

      texCoord0 = UV0;
  #ifdef APPLY_TEXTURE_MATRIX
      texCoord0 = (TextureMat * vec4(UV0, 0.0, 1.0)).xy;
  #endif

      //texCoord0 = UV0 + Normal.xy;
  }
  ```

  </details>

- `@vertex_shader minecraft:core/rendertype_entity_shadow`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>


  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;

  uniform sampler2D Sampler0;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;

  // bool IsMinecart() {

  //     vec2 defTextureSize = vec2(64.0,32.0);

  //     bvec4 checkEmpty = bvec4(
  //         texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
  //         texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
  //     );

  //     bvec4 checkValid = bvec4(
  //         texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
  //         texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
  //     );

  //     return all(checkEmpty) && all(checkValid);
  // }

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);
      vertexColor = Color;
      // if (Color == vec4(123./255., 123./255., 0., Color.a)) {
      // if (IsMinecart()) {
      //     vertexColor.a = 0.0;
      // }

      texCoord0 = UV0;
  }
  ```

  </details>

- `@vertex_shader(strip_final_newline) minecraft:core/rendertype_text`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:fog.glsl>
  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in ivec2 UV2;

  uniform sampler2D Sampler2;

  out float sphericalVertexDistance;
  out float cylindricalVertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      sphericalVertexDistance = fog_spherical_distance(Position);
      cylindricalVertexDistance = fog_cylindrical_distance(Position);
      vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
      texCoord0 = UV0;

      if (Color == vec4(123/255., 123/255., 0, Color.a)) {
          vertexColor = texelFetch(Sampler2, UV2 / 16, 0);
          vec3 newPos = vec3(Position.x, Position.y, Position.z + 200.0);
          gl_Position = ProjMat * ModelViewMat * vec4(newPos, 1.0);
          // gl_Position = vec4(2,2,2,1);
      }
  }
  ```

  </details>

- `@vertex_shader(strip_final_newline) minecraft:core/rendertype_text_see_through`

  <details>

  ```glsl
  #version 330

  #moj_import <minecraft:dynamictransforms.glsl>
  #moj_import <minecraft:projection.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;

  out vec4 vertexColor;
  out vec2 texCoord0;

  void main() {
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      vertexColor = Color;
      texCoord0 = UV0;

      if (Color == vec4(123/255., 123/255., 0, Color.a)) {
          vertexColor.a = 0.0;
      }
  }
  ```

  </details>

- `@glsl_shader minecraft:include/invisibleminecarts`

  <details>

  ```glsl
  #version 330

  bool CompareVec3(vec3 val1,vec3 val2,vec3 maxdiff) {

      return all(lessThan(abs(val1 - val2), maxdiff));
  }

  bool IsMinecart() {

      vec2 defTextureSize = vec2(64.0,32.0);

      bvec4 checkEmpty = bvec4(
          texture(Sampler0, vec2(1 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(18 / defTextureSize.x,1 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(36 / defTextureSize.x,9 / defTextureSize.y)).a == 0,
          texture(Sampler0, vec2(44 / defTextureSize.x,28 / defTextureSize.y)).a == 0
      );

      bvec4 checkValid = bvec4(
          texture(Sampler0, vec2(2 / defTextureSize.x,2 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(34 / defTextureSize.x,3 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(42 / defTextureSize.x,26 / defTextureSize.y)).a != 0,
          texture(Sampler0, vec2(1 / defTextureSize.x,26 / defTextureSize.y)).a != 0
      );

      return all(checkEmpty) && all(checkValid);
  }

  bool IsValid() {

      return (
          IsMinecart() &&
          (
              CompareVec3(normalize(abs(Normal)),normalize(vec3(1.025,0.5,0.45)),vec3(0.01)) ||
              CompareVec3(normalize(abs(Normal)),normalize(vec3(0.3,0.75,0.135)),vec3(0.01)) ||
              CompareVec3(normalize(abs(Normal)),normalize(vec3(0.435,0,0.985)),vec3(0.01))
          )
      );
  }
  ```

  </details>

## Overlay `1.21.5`

`@overlay 1.21.5`

### minecraft

- `@fragment_shader minecraft:core/rendertype_item_entity_translucent_cull`

  <details>

  ```glsl
  #version 150

  #moj_import <minecraft:fog.glsl>

  uniform sampler2D Sampler0;

  uniform vec4 ColorModulator;
  uniform float FogStart;
  uniform float FogEnd;
  uniform vec4 FogColor;

  in float vertexDistance;
  in vec4 vertexColor;
  in vec2 texCoord0;
  in vec2 texCoord1;

  out vec4 fragColor;

  flat in int isLine;

  void main() {
      if (isLine == 1) {
          fragColor = vertexColor;
          return;
      }
      vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;
      if (color.a < 0.1) {
          discard;
      }
      fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
  }
  ```

  </details>

- `@shader minecraft:core/rendertype_item_entity_translucent_cull`

  <details>

  ```json
  {
      "vertex": "minecraft:core/rendertype_item_entity_translucent_cull",
      "fragment": "minecraft:core/rendertype_item_entity_translucent_cull",
      "samplers": [
          { "name": "Sampler0" },
          { "name": "Sampler2" }
      ],
      "uniforms": [
          { "name": "ModelViewMat", "type": "matrix4x4", "count": 16, "values": [ 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0 ] },
          { "name": "ProjMat", "type": "matrix4x4", "count": 16, "values": [ 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0 ] },
          { "name": "ColorModulator", "type": "float", "count": 4, "values": [ 1.0, 1.0, 1.0, 1.0 ] },
          { "name": "Light0_Direction", "type": "float", "count": 3, "values": [0.0, 0.0, 0.0] },
          { "name": "Light1_Direction", "type": "float", "count": 3, "values": [0.0, 0.0, 0.0] },
          { "name": "FogStart", "type": "float", "count": 1, "values": [ 0.0 ] },
          { "name": "FogEnd", "type": "float", "count": 1, "values": [ 1.0 ] },
          { "name": "FogColor", "type": "float", "count": 4, "values": [ 0.0, 0.0, 0.0, 0.0 ] },
          { "name": "FogShape", "type": "int", "count": 1, "values": [ 0 ] },
          { "name": "ScreenSize", "type": "float", "count": 2, "values": [ 1.0, 1.0 ] }
      ]
  }
  ```

  </details>

- `@vertex_shader minecraft:core/rendertype_item_entity_translucent_cull`

  <details>

  ```glsl
  #version 150

  #moj_import <minecraft:light.glsl>
  #moj_import <minecraft:fog.glsl>

  in vec3 Position;
  in vec4 Color;
  in vec2 UV0;
  in vec2 UV1;
  in ivec2 UV2;
  in vec3 Normal;

  uniform sampler2D Sampler2;

  uniform mat4 ModelViewMat;
  uniform mat4 ProjMat;
  uniform int FogShape;

  uniform vec3 Light0_Direction;
  uniform vec3 Light1_Direction;

  out float vertexDistance;
  out vec4 vertexColor;
  out vec2 texCoord0;
  out vec2 texCoord1;
  out vec2 texCoord2;

  flat out int isLine;
  uniform sampler2D Sampler0;
  uniform vec2 ScreenSize;

  const float VIEW_SHRINK = 1.0 - (1.0 / 256.0);
  const mat4 VIEW_SCALE = mat4(
      VIEW_SHRINK, 0.0, 0.0, 0.0,
      0.0, VIEW_SHRINK, 0.0, 0.0,
      0.0, 0.0, VIEW_SHRINK, 0.0,
      0.0, 0.0, 0.0, 1.0
  );

  void main() {
      vec4 color = textureLod(Sampler0, UV0, 0);
      float LineWidth = 2.5;
      isLine = 0;
      if (int(round(color.a * 255.)) == 251) {

          ivec2 coords = ivec2(UV0 * textureSize(Sampler0, 0));

          vec4 widthColor = texelFetch(Sampler0, coords + ivec2(4, 0), 0);
          if (widthColor.a > 0.5) {
              LineWidth = dot(widthColor.rgb, vec3(1.0, 1./256., 1./65536)) * 255.;
          }

          isLine = 1;
          vec3 N = (color.rgb - 127./255.) * 2.;
          if (abs(N.y) < 0.1) {
              N = vec3(-Normal.z, 0.0, Normal.x);
          }
          vec4 linePosStart = ProjMat * VIEW_SCALE * ModelViewMat * vec4(Position, 1.0);
          vec4 linePosEnd = ProjMat * VIEW_SCALE * ModelViewMat * vec4(Position + N, 1.0);

          vec3 ndc1 = linePosStart.xyz / linePosStart.w;
          vec3 ndc2 = linePosEnd.xyz / linePosEnd.w;

          vec2 lineScreenDirection = normalize((ndc2.xy - ndc1.xy) * ScreenSize);
          vec2 lineOffset = vec2(-lineScreenDirection.y, lineScreenDirection.x) * LineWidth / ScreenSize;

          float topDownZ = dot(vec2(-ModelViewMat[2][0], ModelViewMat[0][0]), Position.xz);
          if ((topDownZ > 0.0) ^^ lineOffset.x < 0.0) {
              lineOffset *= -1.0;
          }

          bool dir = (abs(N.y) > 0.1 && gl_VertexID % 4 == 2 || gl_VertexID % 4 == 3)
                  || (abs(N.x) > 0.1 && gl_VertexID % 4 == 0 || gl_VertexID % 4 == 3)
                  || (abs(N.z) > 0.1 && gl_VertexID % 4 == 0 || gl_VertexID % 4 == 3);

          if (dir) {
              gl_Position = vec4((ndc1 + vec3(lineOffset, 0.0)) * linePosStart.w, linePosStart.w);
          } else {
              gl_Position = vec4((ndc1 - vec3(lineOffset, 0.0)) * linePosStart.w, linePosStart.w);
          }

          vertexDistance = fog_distance(Position, FogShape);
          vertexColor = Color * texelFetch(Sampler0, coords + ivec2(2, 0), 0);
          texCoord0 = UV0;
          texCoord1 = UV1;
          texCoord2 = UV2;
          return;
      }
      gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

      vertexDistance = fog_distance(Position, FogShape);
      vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, Color) * texelFetch(Sampler2, UV2 / 16, 0);
      texCoord0 = UV0;
      texCoord1 = UV1;
      texCoord2 = UV2;
  }
  ```

  </details>

`@endoverlay`
