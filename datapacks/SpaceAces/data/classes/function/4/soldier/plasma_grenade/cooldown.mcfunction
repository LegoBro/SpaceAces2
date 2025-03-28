## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye
execute if score @s ability.1.cooldown = class.soldier.1.duration Numbers run function classes:4/soldier/plasma_grenade/deactivate
scoreboard players remove @s ability.1.cooldown 1