#Commands ran for setback
execute store result bossbar minecraft:main max run scoreboard players get fullPoint Numbers
bossbar set main players @a

# activePoint 0 = red (positive progress)
# activePoint 1 = center
# activePoint 2 = blue (negative progress)

# Active Capture Point
execute if score #capture_delay gamemode matches 1.. run function gamemode:setback/waiting
execute unless score #capture_delay gamemode matches 1.. at @n[type=marker,tag=gamemode.setback.active_point] as @e[team=red,type=#projectile:players,tag=hb,distance=..7,limit=3] unless entity @a[team=blue,distance=..7] run scoreboard players add point Numbers 1
execute unless score #capture_delay gamemode matches 1.. at @n[type=marker,tag=gamemode.setback.active_point] as @e[team=blue,type=#projectile:players,tag=hb,distance=..7,limit=3] unless entity @a[team=red,distance=..7] run scoreboard players remove point Numbers 1

execute as @n[type=marker,tag=gamemode.setback.active_point] at @s run function gamemode:comp/tool/compass




# Negative value = blue control
execute if score point Numbers matches ..-1 run function gamemode:setback/blue/control

# Positive value = red control
execute if score point Numbers matches 1.. run function gamemode:setback/red/control

# Health
#execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with minecraft:air
execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:comp/respawn/await

execute unless entity @a[tag=winner] run scoreboard players add captureSound i 1
execute if score captureSound i matches 50.. run scoreboard players reset captureSound i

execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10

return 1