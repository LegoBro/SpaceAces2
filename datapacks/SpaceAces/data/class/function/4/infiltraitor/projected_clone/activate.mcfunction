scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.infiltraitor.ultimate.duration Numbers

execute summon marker run function class:4/infiltraitor/projected_clone/marker
effect clear @s
scoreboard players reset @s rightClick
return 1