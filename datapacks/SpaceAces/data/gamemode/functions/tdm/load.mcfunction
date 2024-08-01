# Loads tdm (dynamic)
  scoreboard players set ActiveMode Numbers 2
    execute if score Map Numbers matches 0 run function arena:load_ruins
    execute if score Map Numbers matches 1 run function arena:load_aqua_base
    execute if score Map Numbers matches 2 run function arena:load_dust_temple
    execute if score Map Numbers matches 3 run function arena:load_snow_bowl
    execute if score Map Numbers matches 4 run function arena:load_gray_caves
    scoreboard players set blue_players Numbers 0
    scoreboard players set red_players Numbers 0
    execute as @a[tag=ready,team=blue] run scoreboard players add blue_players Numbers 1
    execute as @a[tag=ready,team=red] run scoreboard players add red_players Numbers 1
    scoreboard players operation blue_lives Numbers = TDMLives Numbers
    scoreboard players operation red_lives Numbers = TDMLives Numbers
    bossbar set minecraft:blue name ["",{"text":"IGSR Lives Left","color":"blue"}]
    bossbar set minecraft:red name ["",{"text":"RLU Lives Left","color":"red"}]
    execute store result bossbar minecraft:blue max run scoreboard players get TDMLives Numbers
    execute store result bossbar minecraft:red max run scoreboard players get TDMLives Numbers