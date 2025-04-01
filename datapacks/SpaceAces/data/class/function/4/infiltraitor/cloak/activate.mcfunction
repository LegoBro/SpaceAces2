scoreboard players add @s invis 100
particle minecraft:sweep_attack ~ ~ ~ .5 1.2 .5 0 30 force @a
playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.5

scoreboard players operation @s ability.1.cooldown = class.infiltraitor.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1