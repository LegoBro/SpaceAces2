## Respawn to team location
playsound minecraft:item.totem.use master @a ~ ~ ~ 50 2 1
tp @s[team=blue] @e[tag=blue_spawn_point,limit=1]
tp @s[team=red] @e[tag=red_spawn_point,limit=1]
#tp @s ~ ~ ~ 0 0
function gamemode:respawn