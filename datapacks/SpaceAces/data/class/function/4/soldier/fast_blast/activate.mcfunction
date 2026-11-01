effect give @s minecraft:speed 8 5 true
effect give @s minecraft:luck 8 100 true

scoreboard players set @s ultimate_charge 0
scoreboard players add @s stat.game.ults_used 1
scoreboard players operation @s ultimate.cooldown = class.soldier.ultimate.duration Numbers

scoreboard players reset @s rightClick
return 1