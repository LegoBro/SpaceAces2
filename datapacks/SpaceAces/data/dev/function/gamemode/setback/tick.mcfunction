## Ticks for setback dev

# Capture Point
execute as @e[tag=gamemode.setback.point] at @s run particle minecraft:raid_omen
execute as @e[tag=gamemode.setback.active_point] at @s run particle minecraft:trial_omen


execute as @a[tag=dev.gamemode.setback,gamemode=!adventure] at @s run function dev:gamemode/setback/player

execute as @n[type=marker,tag=dev.gamemode.setback.minus_1] at @s run function dev:gamemode/setback/minus_1
execute as @n[type=marker,tag=dev.gamemode.setback.plus_1] at @s run function dev:gamemode/setback/plus_1