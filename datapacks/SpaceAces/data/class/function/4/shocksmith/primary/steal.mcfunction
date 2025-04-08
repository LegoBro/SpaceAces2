## Charge player
particle minecraft:block{block_state:{Name:"minecraft:yellow_concrete_powder"}} ~ ~ ~ 0 0 0 0.1 3 force @a
scoreboard players operation @s ability.1.cooldown += class.shocksmith.primary.steal_amount Numbers
execute if score @s ability.1.cooldown > class.shocksmith.secondary.max_ammo Numbers run scoreboard players operation @s ability.1.cooldown = class.shocksmith.secondary.max_ammo Numbers