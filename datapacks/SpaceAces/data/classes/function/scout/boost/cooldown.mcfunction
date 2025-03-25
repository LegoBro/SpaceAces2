## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye

execute if score @s activate_second = class.scout.1.duration Numbers run function classes:scout/boost/deactivate
scoreboard players remove @s activate_second 1