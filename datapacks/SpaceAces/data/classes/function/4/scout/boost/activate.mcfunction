effect give @s minecraft:speed 1 5 true
scoreboard players add @s invulnerable 20
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0
particle minecraft:enchanted_hit ~ ~ ~ 0.01 0 0.01 .1 50 force @a

scoreboard players operation @s ability.1.cooldown = class.scout.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1