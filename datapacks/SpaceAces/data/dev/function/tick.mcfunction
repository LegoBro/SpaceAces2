## Dev Mode Ticking
execute as @a[gamemode=creative] at @s run function dev:tick/player
# Health Packs
execute as @e[tag=strong_health_pack] at @s run particle heart
execute as @e[tag=weak_health_pack] at @s run particle minecraft:damage_indicator


## Visualize different tags
execute if entity @p[tag=dev.spawnpoints] run function dev:show/spawnpoints
execute if entity @p[tag=dev.payload] run function dev:show/payload

# Capture Point
execute as @e[tag=capture_point] at @s run particle minecraft:raid_omen

## Weather
function weather:dev_tick

## Marker Killer
execute as @e[type=marker,tag=kill_marker] at @s run kill @e[type=marker,limit=2,sort=nearest,distance=..1]

execute as @e[type=marker,tag=kill] at @s run kill @s