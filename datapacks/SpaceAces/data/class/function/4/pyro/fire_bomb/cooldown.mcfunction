## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/pyro/fire_bomb_cooldown"]
execute if score @s ability.1.cooldown = class.pyro.1.duration Numbers run function class:4/pyro/fire_bomb/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary