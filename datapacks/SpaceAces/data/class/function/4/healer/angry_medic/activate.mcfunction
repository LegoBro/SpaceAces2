effect give @s minecraft:speed 5 4 true
effect give @s minecraft:luck 5 100 true
playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 0.5 2.0

scoreboard players operation @s ability.1.cooldown = class.healer.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1