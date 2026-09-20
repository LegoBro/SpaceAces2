## Throw da sword
tp @s ^ ^ ^1
particle item{item:orange_stained_glass} ~ ~ ~ 0 0 0 0.1 5 force
scoreboard players add @s i 1


scoreboard players operation #damage Numbers = class.brawler.2.damage Numbers

scoreboard players operation #team Team = @s Team

scoreboard players operation place_id id = @s id
execute as @e[type=#projectile:players,tag=hb] if score place_id id = @s id run tag @s add attacker
function class:4/helper/tag_team
execute positioned ~ ~-1 ~ as @e[distance=..1.5,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] unless score @s Team = #team Team run function projectile:boomer/damage_near
tag @e[type=#projectile:players,tag=hb] remove attacker

execute if score @s i matches 150.. run return run kill @s
execute unless block ~ ~ ~ #projectile:ignore_all run kill @s

return 1