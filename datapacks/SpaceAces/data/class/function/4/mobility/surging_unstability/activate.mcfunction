function class:4/mobility/surging_unstability/shoot

scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.mobility.ultimate.duration Numbers

scoreboard players reset @s rightClick
return 1