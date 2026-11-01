## Volley Location
tp @s ~ ~ ~ ~ 60

effect give @s slowness 1

scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.bomber.ultimate.duration Numbers

scoreboard players reset @s rightClick
scoreboard players add @s stat.game.ults_used 1
return 1