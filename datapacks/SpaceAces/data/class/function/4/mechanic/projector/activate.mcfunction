scoreboard players operation @s ability.2.cooldown = class.mechanic.2.cooldown Numbers
scoreboard players reset @s rightClick

summon marker ~ ~ ~ {Tags:[class.deployable,class.mechanic.projector]}
scoreboard players operation @n[tag=class.mechanic.projector,distance=..1] id = #Class_Start id
scoreboard players operation @n[tag=class.mechanic.projector,distance=..1] Team = #Class_Start Team

return 1