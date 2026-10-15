## Blue death
execute if score blue_lives Numbers matches 1.. store result score blue_players Numbers if entity @e[type=#projectile:players,tag=hb,team=blue]

scoreboard players remove blue_lives Numbers 1
execute if score blue_lives Numbers matches ..-1 run function gamemode:comp/respawn/spectator
execute if score blue_lives Numbers matches 0 run bossbar set minecraft:blue name ["",{"text":"IGSR Players Left",color:"blue","type":"text"}]
execute if score blue_lives Numbers matches ..0 store result bossbar minecraft:blue max run scoreboard players get blue_players Numbers
execute if score blue_lives Numbers matches ..0 store result bossbar minecraft:blue value if entity @e[type=#projectile:players,tag=hb,team=blue]