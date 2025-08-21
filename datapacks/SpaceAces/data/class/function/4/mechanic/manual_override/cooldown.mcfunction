## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ultimate.cooldown matches 1.. run function class:4/mechanic/manual_override/deactivate
scoreboard players remove @s ultimate.cooldown 1