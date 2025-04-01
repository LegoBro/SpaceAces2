## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye

execute if score @s ability.1.cooldown = class.mobility.1.duration Numbers run function class:4/mobility/warp/deactivate
scoreboard players remove @s ability.1.cooldown 1