scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.healer.ultimate.duration Numbers

scoreboard players reset @s rightClick

summon minecraft:item_display ~ ~ ~ {Tags:["entity","class.healer.over_heal_machine","class.deployable","hb_turret","new","hb"],item:{id:"paper",components:{item_model:"class/healer/heal_machine"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
execute as @n[type=minecraft:item_display,tag=class.healer.over_heal_machine,sort=nearest,limit=1,distance=..3,tag=new] run function class:4/healer/over_heal_machine/setup

return 1