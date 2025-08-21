summon marker ~ ~ ~ {Tags:[class.deployable,class.brawler.tornado,new]}
tp @n[tag=class.brawler.tornado,tag=new] ~ ~ ~ ~ 0
execute as @n[tag=class.brawler.tornado,tag=new] at @s run function class:4/brawler/tornadic_disruption/new
scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.brawler.ultimate.duration Numbers

scoreboard players reset @s rightClick
return 1