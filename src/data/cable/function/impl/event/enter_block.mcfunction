# advancement cable:enter_block {
#   "criteria": {
#     "_": {
#       "trigger": "minecraft:enter_block",
#       "conditions": {
#         "block": "minecraft:moving_piston"
#       }
#     }
#   },
#   "rewards": {
#     "function": "cable:impl/event/enter_block"
#   }
# }

# advancement revoke @s only cable:enter_block

# say enter_block
# particle flame ~ ~ ~ 0 0 0 0 1 force