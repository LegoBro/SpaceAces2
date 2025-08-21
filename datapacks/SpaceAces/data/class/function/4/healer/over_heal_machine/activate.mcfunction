scoreboard players set @s ultimate_charge 0
scoreboard players operation @s ultimate.cooldown = class.healer.ultimate.duration Numbers

scoreboard players reset @s rightClick

summon minecraft:item_display ~ ~ ~ {Tags:["entity","class.healer.over_heal_machine","class.deployable","hb_player","new"]}
execute as @n[type=minecraft:item_display,tag=class.healer.over_heal_machine,sort=nearest,limit=1,distance=..3,tag=new] run function class:4/healer/over_heal_machine/setup

return 1