## Checks turrets out
scoreboard players operation @s ability.2.cooldown = class.mechanic.2.cooldown Numbers
scoreboard players reset @s rightClick
execute as @n[tag=my_turret] at @s run playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 2 0
playsound minecraft:block.anvil.land player @s ~ ~ ~ 1 2 0


return 1