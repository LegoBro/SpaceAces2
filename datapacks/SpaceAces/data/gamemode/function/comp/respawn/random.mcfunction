playsound minecraft:item.totem.use player @a ~ ~ ~ 50 2 1
function gamemode:respawn

## Favor spawnpoint that has score of 0, fallback if not
execute if entity @n[type=marker,tag=general_spawn_point,scores={gamemode.spawnpoint.progress=0}] run return run tp @s @e[type=minecraft:marker,tag=general_spawn_point,sort=random,limit=1,scores={gamemode.spawnpoint.progress=0}]
return run tp @s @e[type=minecraft:marker,tag=general_spawn_point,sort=random,limit=1]

#tp @s ~ ~ ~ 0 0
