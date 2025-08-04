## fire bomb becomes active
summon item_display ~ ~ ~ {Tags:["active_fire_bomb","hb_player","entity","class.deployable","new"],teleport_duration:1}
execute store result score @e[type=minecraft:armor_stand,tag=active_fire_bomb,tag=new,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute store result score @e[type=minecraft:armor_stand,tag=active_fire_bomb,tag=new,sort=nearest,limit=1,distance=..3] Team run scoreboard players get @s Team

return 1