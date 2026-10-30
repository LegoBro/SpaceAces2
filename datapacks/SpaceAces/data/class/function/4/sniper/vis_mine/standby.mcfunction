## Standby for vis mine

tag @s add ignore.projectiles
scoreboard players operation #team Team = @s Team
execute positioned ~ ~ ~ as @e[distance=..2,type=#projectile:players,tag=hb] unless score @s Team = #team Team run function class:4/sniper/vis_mine/trigger
tag @s remove ignore.projectiles

return 1