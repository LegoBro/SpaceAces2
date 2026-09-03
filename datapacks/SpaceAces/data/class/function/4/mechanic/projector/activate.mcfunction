scoreboard players operation @s ability.2.cooldown = class.mechanic.2.cooldown Numbers
scoreboard players reset @s rightClick

#summon marker ~ ~ ~ {Tags:[class.deployable,class.mechanic.projector]}

summon item_display ~ ~ ~ {Tags:[class.deployable,class.mechanic.projector],item:{id:paper,components:{item_model:"class/mechanic/projector"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[1f,1f,1f]},teleport_duration:10, brightness:{block:15,sky:15}}
scoreboard players operation @n[tag=class.mechanic.projector,distance=..1] id = #Class_Start id
scoreboard players operation @n[tag=class.mechanic.projector,distance=..1] Team = #Class_Start Team

return 1