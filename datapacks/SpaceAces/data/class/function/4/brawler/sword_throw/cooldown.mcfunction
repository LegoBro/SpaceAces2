## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye
execute if score @s ability.2.cooldown = class.brawler.2.duration Numbers run function class:4/brawler/sword_throw/deactivate
scoreboard players remove @s ability.2.cooldown 1