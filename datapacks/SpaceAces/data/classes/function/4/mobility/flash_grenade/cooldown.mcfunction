## Boost is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye

execute if score @s ability.2.cooldown = class.mobility.2.duration Numbers run function classes:4/mobility/boost/deactivate
scoreboard players remove @s ability.2.cooldown 1