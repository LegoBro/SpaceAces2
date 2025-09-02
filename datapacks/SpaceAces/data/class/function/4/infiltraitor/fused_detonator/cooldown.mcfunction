## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ability.2.cooldown = class.infiltraitor.2.duration Numbers run function class:4/infiltraitor/fused_detonator/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary