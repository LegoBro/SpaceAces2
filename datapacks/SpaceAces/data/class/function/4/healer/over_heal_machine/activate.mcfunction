scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.healer.ultimate.duration Numbers
scoreboard players add @s stat.game.ults_used 1
scoreboard players reset @s rightClick

summon minecraft:item_display ~ ~0.5 ~ {Tags:["entity","class.healer.over_heal_machine","class.deployable","sab.nearby.healing","hb_turret","new","hb","kill_effect_override"],item:{id:"paper",components:{item_model:"class/healer/heal_machine/base"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:item_display ~ ~0.5 ~ {Tags:["class.healer.over_heal_machine.top","new","class.helper.animation"],item:{id:"paper",components:{item_model:"class/healer/heal_machine/top"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},interpolation_duration:21}
execute as @n[type=minecraft:item_display,tag=class.healer.over_heal_machine,sort=nearest,limit=1,distance=..3,tag=new] run function class:4/healer/over_heal_machine/setup
return 1