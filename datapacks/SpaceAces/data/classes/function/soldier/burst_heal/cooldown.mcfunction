## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye
execute if score @s activate_second >= class.soldier.2.duration Numbers run function classes:soldier/burst_heal/activate
execute if score @s activate_second = class.soldier.2.duration Numbers run function classes:soldier/burst_heal/deactivate
scoreboard players remove @s activate_second 1