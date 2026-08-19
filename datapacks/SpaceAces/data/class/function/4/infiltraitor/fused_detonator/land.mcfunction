## Fused Detonator Land
summon item_display ^ ^ ^-0.5 {Tags:["entity","fused_detonator_standby","hb_player","class.deployable","new"],teleport_duration:1,item:{id:paper,components:{item_model:"class/infiltraitor/detonator"}}}
execute positioned ~ ~-0.5 ~ unless block ^ ^-1 ^-0.5 air positioned ~ ~0.5 ~ run tp @n[tag=entity,tag=fused_detonator_standby,tag=new,distance=..3] ^ ^ ^-0.5 ~ 0
execute positioned ~ ~-0.5 ~ if block ^ ^ ^-.5 air positioned ~ ~0.5 ~ run tp @n[tag=entity,tag=fused_detonator_standby,tag=new,distance=..3] ^ ^ ^-0.25 ~ -90
scoreboard players operation @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,sort=nearest,limit=1,distance=..3] Team = @s Team
scoreboard players set @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,distance=..3] health 50
execute store result score @n[type=minecraft:item_display,tag=fused_detonator_standby,tag=new,tag=entity,distance=..3] id run scoreboard players get @s id

return 1