## Standby for vis mine
tag @s add ignore.projectiles
scoreboard players operation #team Team = @s Team
execute positioned ~ ~-1 ~ as @e[distance=..1,tag=!ignore.projectiles,tag=!ignore] unless score @s Team = #team Team run function classes:4/sniper/vis_mine/trigger
tag @s remove ignore.projectiles

return 1