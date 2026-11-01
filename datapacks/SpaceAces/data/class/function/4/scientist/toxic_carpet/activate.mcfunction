
tag @s add class.scientist.toxic_carpet
scoreboard players set @s ultimate_charge 0
scoreboard players add @s stat.game.ults_used 1
scoreboard players operation @s ultimate.cooldown = class.scientist.ultimate.duration Numbers
scoreboard players reset @s rightClick
return 1