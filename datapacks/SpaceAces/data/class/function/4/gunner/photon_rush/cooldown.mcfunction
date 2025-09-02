## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ability.1.cooldown = class.gunner.1.duration Numbers if predicate input:on_ground run function class:4/gunner/photon_rush/deactivate
execute if score @s[tag=!input.forward] ability.1.cooldown > class.gunner.1.duration Numbers if predicate input:on_ground run function class:4/gunner/photon_rush/deactivate
execute unless score @s ability.1.cooldown = class.gunner.1.duration Numbers run scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary