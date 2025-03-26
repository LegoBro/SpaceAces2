## Vis Mine becomes active
summon item_display ~ ~ ~ {Tags:["entity","standby_sticky_bomb","hb_player"],teleport_duration:1}
item replace entity @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=entity,distance=..3] container.0 with minecraft:paper[item_model="bomber/sticky"]
scoreboard players operation @n[type=minecraft:item_display,tag=standby_sticky_bomb,sort=nearest,limit=1,distance=..3] Team = @s Team
execute if entity @s[tag=blue] run team join blue @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=entity,distance=..3]
execute if entity @s[tag=red] run team join red @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=entity,distance=..3]
scoreboard players set @n[type=minecraft:item_display,tag=standby_sticky_bomb,distance=..3] health 50
execute store result score @n[type=minecraft:item_display,tag=standby_sticky_bomb,tag=entity,distance=..3] id run scoreboard players get @s id

return 1