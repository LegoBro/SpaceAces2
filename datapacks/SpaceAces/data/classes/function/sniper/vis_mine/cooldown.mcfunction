## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye
execute if score @s ability.2.cooldown = class.sniper.2.duration Numbers run function classes:sniper/vis_mine/deactivate
scoreboard players remove @s ability.2.cooldown 1