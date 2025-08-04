
scoreboard players operation @s ability.2.cooldown = class.pyro.2.cooldown Numbers
scoreboard players reset @s rightClick

playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 1.0 2.0
scoreboard players operation @s resist = @s maxHealth
scoreboard players operation @s resist -= @s health
scoreboard players operation @s resist *= 100 Numbers
scoreboard players operation @s resist /= @s maxHealth


scoreboard players operation @s resist /= class.pyro.2.percent_for_second Numbers
scoreboard players add @s resist 1

execute store result storage class:pyro shield int 1.0 run scoreboard players get @s resist
function class:4/pyro/adaptive_plating/macro with storage class:pyro
scoreboard players operation @s resist *= 20 Numbers


return 1
