## Respawn to team location
playsound minecraft:item.totem.use master @a ~ ~ ~ 50 2 1
function gamemode:respawn
execute if entity @s[team=blue] at @n[type=minecraft:marker,tag=blue_spawn_point,scores={gamemode.spawnpoint.progress=0}] run return run tp @s ~ ~ ~
execute if entity @s[team=red] at @n[type=minecraft:marker,tag=red_spawn_point,scores={gamemode.spawnpoint.progress=0}] run return run tp @s ~ ~ ~

execute if entity @s[team=blue] at @n[type=minecraft:marker,tag=blue_spawn_point] run return run tp @s ~ ~ ~
execute if entity @s[team=red] at @n[type=minecraft:marker,tag=red_spawn_point] run return run tp @s ~ ~ ~
