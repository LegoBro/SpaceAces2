## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye
execute if score @s ability.2.cooldown >= class.soldier.2.duration Numbers run function classes:4/soldier/burst_heal/burst_healing
execute if score @s ability.2.cooldown = class.soldier.2.duration Numbers run function classes:4/soldier/burst_heal/deactivate
scoreboard players remove @s ability.2.cooldown 1