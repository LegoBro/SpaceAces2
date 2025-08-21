## Boost is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]

execute if score @s ability.2.cooldown = class.bomber.2.duration Numbers run function class:4/bomber/toggle/deactivate
scoreboard players remove @s ability.2.cooldown 1