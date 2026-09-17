## Player dies
execute if score blue_lives Numbers matches ..0 run team join spectator @s[team=blue]
execute if score red_lives Numbers matches ..0 run team join spectator @s[team=red]
execute as @s[team=blue] run scoreboard players remove blue_lives Numbers 1
execute as @s[team=red] run scoreboard players remove red_lives Numbers 1
gamemode spectator @a[tag=in_game,team=spectator]
tag @a[tag=in_game,team=spectator] remove in_game
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:comp/respawn/random

## Visually display in bossbars
execute if score blue_lives Numbers matches 0 run bossbar set minecraft:blue name ["",{"text":"IGSR Players Left",color:"blue","type":"text"}]
execute if score red_lives Numbers matches 0 run bossbar set minecraft:red name ["",{"text":"RLU Players Left",color:"red","type":"text"}]

execute if score blue_lives Numbers matches 0 store result bossbar minecraft:blue max run scoreboard players get blue_players Numbers
execute if score red_lives Numbers matches 0 store result bossbar minecraft:red max run scoreboard players get red_players Numbers

execute if score blue_lives Numbers matches 0 store result bossbar minecraft:blue value if entity @a[tag=in_game,team=blue]
execute if score red_lives Numbers matches 0 store result bossbar minecraft:red value if entity @a[tag=in_game,team=red]