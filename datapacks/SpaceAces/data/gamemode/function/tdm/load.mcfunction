# Loads tdm (dynamic)
scoreboard players set ActiveMode Numbers 2

execute if score Map settings matches 0 run function arena:load/moon_base
execute if score Map settings matches 1 run function arena:load/ruins


scoreboard players set blue_players Numbers 0
scoreboard players set red_players Numbers 0
execute as @a[tag=ready,team=blue] run scoreboard players add blue_players Numbers 1
execute as @a[tag=ready,team=red] run scoreboard players add red_players Numbers 1
scoreboard players operation blue_lives Numbers = TDMLives Numbers
scoreboard players operation red_lives Numbers = TDMLives Numbers
bossbar set minecraft:blue name ["",{"text":"IGSR Lives Left","color":"blue","type":"text"}]
bossbar set minecraft:red name ["",{"text":"RLU Lives Left","color":"red","type":"text"}]
execute store result bossbar minecraft:blue max run scoreboard players get TDMLives Numbers
execute store result bossbar minecraft:red max run scoreboard players get TDMLives Numbers
return 1