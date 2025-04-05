## Throw da sword
tp @s ^ ^ ^1
scoreboard players add @s i 1


scoreboard players operation #damage Numbers = class.brawler.2.damage Numbers

scoreboard players operation #team Team = @s Team

scoreboard players operation place_id id = @s id
execute as @a if score place_id id = @s id run tag @s add attacker
execute positioned ~ ~-1 ~ as @e[distance=..1.5,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #team Team run function projectile:boomer/damage_near
tag @s remove attacker

execute if score @s i matches 150.. run return run kill @s
execute unless block ~ ~ ~ #projectile:ignore_all run kill @s

return 1