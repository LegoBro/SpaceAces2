# Red
execute if score red_lives Numbers matches 1.. store result score red_players Numbers if entity @e[type=#projectile:players,tag=hb,team=red]

execute if score red_lives Numbers matches ..0 run function gamemode:comp/respawn/spectator
execute as @s[team=red] run scoreboard players remove red_lives Numbers 1
execute if score red_lives Numbers matches 0 run bossbar set minecraft:red name ["",{"text":"RLU Players Left",color:"red","type":"text"}]
execute if score red_lives Numbers matches ..0 store result bossbar minecraft:red max run scoreboard players get red_players Numbers
execute if score red_lives Numbers matches ..0 store result bossbar minecraft:red value if entity @e[type=#projectile:players,tag=hb,team=red]