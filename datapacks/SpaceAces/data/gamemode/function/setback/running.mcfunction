#Commands ran for setback
execute store result bossbar minecraft:main max run scoreboard players get fullPoint Numbers
bossbar set main players @a

# activePoint 0 = red (positive progress)
# activePoint 1 = center
# activePoint 2 = blue (negative progress)

# Active Capture Point
execute at @n[type=marker,tag=active_capture_point] as @a[team=red,distance=..3,limit=3] unless entity @a[team=blue,distance=..3] run scoreboard players add point Numbers 1
execute at @n[type=marker,tag=active_capture_point] as @a[team=blue,distance=..3,limit=3] unless entity @a[team=red,distance=..3] run scoreboard players remove point Numbers 1

# Negative value = blue control
execute if score point Numbers matches ..-1 run function gamemode:setback/blue/control

# Positive value = red control
execute if score point Numbers matches 1.. run function gamemode:setback/red/control

# Health
tp @a[tag=in_game,scores={health=..0},team=blue] 6 195 -1 90 0
tp @a[tag=in_game,scores={health=..0},team=red] 10 195 -1 -90 0
scoreboard players add @a[tag=in_game,scores={health=..0}] i 1
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with minecraft:air
execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:setback/respawning

execute unless entity @a[tag=winner] run scoreboard players add captureSound i 1
execute if score captureSound i matches 50.. run scoreboard players reset captureSound i

execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10

return 1