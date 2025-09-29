## Vis Mine becomes active
summon item_display ^ ^ ^-0.5 {Tags:["entity","standby_sticky_bomb","hb_mine","class.deployable","headshot_fix","new"],teleport_duration:1}
item replace entity @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,tag=entity,distance=..3] container.0 with minecraft:paper[item_model="class/bomber/sticky"]
scoreboard players operation @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,tag=entity,distance=..3] Team = @s Team
scoreboard players set @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,tag=entity,distance=..3] health 50
execute store result score @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,tag=entity,distance=..3] id run scoreboard players get @s id
tag @e[type=minecraft:item_display,tag=standby_sticky_bomb,tag=new,tag=entity,distance=..3] remove new
return 1