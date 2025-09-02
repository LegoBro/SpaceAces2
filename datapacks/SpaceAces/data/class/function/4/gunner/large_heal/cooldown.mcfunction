## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if entity @s[tag=class.gunner.large_heal] run function class:4/gunner/large_heal/heal_tick
execute if score @s ability.2.cooldown = class.gunner.duration Numbers run function class:4/gunner/large_heal/deactivate
execute if score @s damage matches 1.. run tag @s remove class.gunner.large_heal
execute if score @s health >= @s maxHealth run tag @s remove class.gunner.large_heal
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary