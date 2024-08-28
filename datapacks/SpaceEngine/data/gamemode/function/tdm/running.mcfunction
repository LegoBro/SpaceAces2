#Commands ran for tdm
bossbar set main players
bossbar set minecraft:blue players @a
bossbar set minecraft:red players @a
execute unless score blue_lives Numbers matches 0 store result bossbar minecraft:blue value run scoreboard players get blue_lives Numbers
execute unless score red_lives Numbers matches 0 store result bossbar minecraft:red value run scoreboard players get red_lives Numbers

execute if score blue_lives Numbers matches ..0 run team join spectator @a[tag=in_game,scores={health=..0},team=blue]
execute if score red_lives Numbers matches ..0 run team join spectator @a[tag=in_game,scores={health=..0},team=red]

execute as @a[tag=in_game,scores={health=..0},team=blue] run scoreboard players remove blue_lives Numbers 1
execute as @a[tag=in_game,scores={health=..0},team=red] run scoreboard players remove red_lives Numbers 1

gamemode spectator @a[tag=in_game,team=spectator]
tag @a[tag=in_game,team=spectator] remove in_game
execute as @a[tag=in_game,scores={health=..0}] run tp @s @e[type=minecraft:item_frame,tag=general_spawn,sort=random,limit=1]
execute at @a[tag=in_game,scores={health=..0}] run playsound minecraft:item.totem.use player @a ~ ~ ~ 50 2 1
execute as @a[tag=in_game,scores={health=..0}] at @s run tp @s ~ ~ ~ 0 0
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers 0
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win
item replace entity @a[tag=in_game] hotbar.8 with minecraft:air

execute if score blue_lives Numbers matches 0 run bossbar set minecraft:blue name ["",{"text":"IGSR Players Left","color":"blue","type":"text"}]
execute if score red_lives Numbers matches 0 run bossbar set minecraft:red name ["",{"text":"RLU Players Left","color":"red","type":"text"}]

execute if score blue_lives Numbers matches 0 store result bossbar minecraft:blue max run scoreboard players get blue_players Numbers
execute if score red_lives Numbers matches 0 store result bossbar minecraft:red max run scoreboard players get red_players Numbers

execute if score blue_lives Numbers matches 0 store result bossbar minecraft:blue value if entity @a[tag=in_game,team=blue]
execute if score red_lives Numbers matches 0 store result bossbar minecraft:red value if entity @a[tag=in_game,team=red]
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10

return 1