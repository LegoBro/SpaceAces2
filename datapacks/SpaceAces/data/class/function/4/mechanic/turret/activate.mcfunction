scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team
kill @e[tag=my_turret]
# Head
summon item_display ~ ~1 ~ {Tags:["turret_base","hb_mechanic_turret","entity","new","class.deployable","standard","turret","hb","kill_effect_override","class.helper.animation"],teleport_duration:10,item:{id:paper,components:{item_model:"class/mechanic/turret/head/head"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/head/energy_pack"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0.15f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/head/barrel"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,-0.25f],scale:[1f,1f,1f]},interpolation_duration:20}

# Base
summon item_display ~ ~1 ~ {Tags:["turret_base","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/base"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/neck"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.25f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/leg_0"}},transformation:{left_rotation:[0.1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/leg_1"}},transformation:{left_rotation:[0f,0f,-0.1f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/leg_2"}},transformation:{left_rotation:[-0.1f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~1 ~ {Tags:["class.mechanic.turret.part","new","turret","class.helper.animation"],teleport_duration:1,item:{id:paper,components:{item_model:"class/mechanic/turret/base/leg_3"}},transformation:{left_rotation:[0f,0f,0.1f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
execute as @e[type=item_display,tag=turret,tag=new,sort=nearest,limit=2,distance=..3] at @s run function class:4/mechanic/turret/summon
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0 0

scoreboard players operation @s ability.1.cooldown = class.mechanic.1.cooldown Numbers
scoreboard players reset @s rightClick

scoreboard players set @s sab.hasTurret 1

return 1