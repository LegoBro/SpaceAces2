## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye

execute if score @s ability.1.cooldown = class.rocketeer.1.duration Numbers run function class:4/rocketeer/piercing_dart/deactivate
scoreboard players remove @s ability.1.cooldown 1