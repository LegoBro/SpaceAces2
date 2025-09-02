## Poison Jab is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ability.1.cooldown = class.seeker.1.duration Numbers run function class:4/seeker/poison_jab/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary