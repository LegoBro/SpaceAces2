## Boost is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye

execute if score @s ability.2.cooldown = class.rocketeer.2.duration Numbers run function class:4/rocketeer/rocket_wall/deactivate
scoreboard players remove @s ability.2.cooldown 1