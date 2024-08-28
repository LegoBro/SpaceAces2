# Loads setback (dynamic)
scoreboard players set ActiveMode Numbers 3
execute if score Map Numbers matches 0 run function arena:load_layered
execute if score Map Numbers matches 1 run function arena:load_frigate
execute if score Map Numbers matches 2 run function arena:load_arena
execute if score Map Numbers matches 3 run function arena:load_sewage
execute if score Map Numbers matches 4 run function arena:load_farm
scoreboard players set respawnTime Numbers 0
execute as @a[tag=ready] run scoreboard players add respawnTime Numbers 30
scoreboard players set blueCapture Numbers 0
scoreboard players set redCapture Numbers 0
scoreboard players set point Numbers 0
bossbar set minecraft:blue name ["",{"text":"IGSR Capture Progress","color":"blue","type":"text"}]
bossbar set minecraft:red name ["",{"text":"RLU Capture Progress","color":"red","type":"text"}]
execute store result bossbar minecraft:red max run scoreboard players get setScore Numbers
execute store result bossbar minecraft:blue max run scoreboard players get setScore Numbers
return 1