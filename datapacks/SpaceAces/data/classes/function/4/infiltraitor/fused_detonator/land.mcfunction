## Fused Detonator Land
summon item_display ^ ^ ^-0.5 {Tags:["entity","fused_detonator_standby","hb_player","class.deployable","new"],teleport_duration:1}
item replace entity @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=entity,tag=new,distance=..3] container.0 with minecraft:paper[item_model="bomber/sticky"]
scoreboard players operation @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,sort=nearest,limit=1,distance=..3] Team = @s Team
scoreboard players set @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,distance=..3] health 50
execute store result score @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,tag=entity,distance=..3] id run scoreboard players get @s id

return 1