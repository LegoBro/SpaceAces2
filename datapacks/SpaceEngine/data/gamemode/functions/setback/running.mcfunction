#Commands ran for setback
bossbar set minecraft:main name ["",{"text":"Point Multiplier","color":"white"}]
execute store result bossbar minecraft:main max run scoreboard players get setRate Numbers
execute unless entity @a[tag=winner] run scoreboard players add captureSound i 1
execute at @e[type=item_frame,tag=capture_point] if entity @p[team=!spectator,distance=..5] run bossbar set main players @a
execute at @e[type=item_frame,tag=capture_point] unless entity @p[team=!spectator,distance=..5] run bossbar set main players
execute if score point Numbers matches ..-1 run scoreboard players set point Numbers 0
execute at @e[type=item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[team=blue,distance=..5] run setblock ~ ~-1 ~ lapis_block
execute at @e[type=item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[team=red,distance=..5] run setblock ~ ~-1 ~ redstone_block
execute at @e[type=item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[team=red,distance=..5] if entity @p[team=blue,distance=..5] run setblock ~ ~-1 ~ sea_lantern
execute at @e[type=item_frame,tag=capture_point] if block ~ ~-1 ~ redstone_block unless entity @a[tag=winner] run function gamemode:setback/red_control
execute at @e[type=item_frame,tag=capture_point] if block ~ ~-1 ~ lapis_block unless entity @a[tag=winner] run function gamemode:setback/blue_control
execute store result bossbar minecraft:main value run scoreboard players get point Numbers
tp @a[team=blue,scores={health=..0},tag=in_game] 6 195 -1 90 0
tp @a[team=red,scores={health=..0},tag=in_game] 10 195 -1 -90 0
scoreboard players add @a[scores={health=..0},tag=in_game] i 1
execute as @a[scores={health=..0},tag=in_game] at @s run function gamemode:respawn
execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with air
execute as @a[scores={i=1..},tag=in_game] at @s run function gamemode:setback/respawning

execute if score captureSound i matches 50.. run scoreboard players reset captureSound i
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10
