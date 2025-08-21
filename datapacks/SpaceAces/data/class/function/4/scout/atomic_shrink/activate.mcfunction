attribute @s minecraft:scale modifier add class.scout.shrink -.75 add_value
effect give @s minecraft:speed 10 5 true

scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.scout.ultimate.duration Numbers

scoreboard players reset @s rightClick
return 1