#Commands ran for setback
bossbar set minecraft:main name ["",{"text":"Point Multiplier","color":"white","type":"text"}]
execute store result bossbar minecraft:main max run scoreboard players get setRate Numbers
execute unless entity @a[tag=winner] run scoreboard players add captureSound i 1
execute at @e[type=minecraft:item_frame,tag=capture_point] if entity @p[distance=..5,team=!spectator] run bossbar set main players @a
execute at @e[type=minecraft:item_frame,tag=capture_point] unless entity @p[distance=..5,team=!spectator] run bossbar set main players
execute if score point Numbers matches ..-1 run scoreboard players set point Numbers 0
execute at @e[type=minecraft:item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[distance=..5,team=blue] run setblock ~ ~-1 ~ minecraft:lapis_block
execute at @e[type=minecraft:item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[distance=..5,team=red] run setblock ~ ~-1 ~ minecraft:redstone_block
execute at @e[type=minecraft:item_frame,tag=capture_point] if score point Numbers matches 0 if entity @p[distance=..5,team=red] if entity @p[distance=..5,team=blue] run setblock ~ ~-1 ~ minecraft:sea_lantern
execute at @e[type=minecraft:item_frame,tag=capture_point] if block ~ ~-1 ~ minecraft:redstone_block unless entity @a[tag=winner] run function gamemode:setback/red_control
execute at @e[type=minecraft:item_frame,tag=capture_point] if block ~ ~-1 ~ minecraft:lapis_block unless entity @a[tag=winner] run function gamemode:setback/blue_control
execute store result bossbar minecraft:main value run scoreboard players get point Numbers
tp @a[tag=in_game,scores={health=..0},team=blue] 6 195 -1 90 0
tp @a[tag=in_game,scores={health=..0},team=red] 10 195 -1 -90 0
scoreboard players add @a[tag=in_game,scores={health=..0}] i 1
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
execute as @a[tag=in_game] unless score @s i > respawnTime Numbers run item replace entity @s hotbar.8 with minecraft:air
execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:setback/respawning

execute if score captureSound i matches 50.. run scoreboard players reset captureSound i
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10

return 1