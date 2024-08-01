## Commands for spectators
#spectator

execute if entity @a[tag=in_game] run gamemode spectator @s[x=7,y=195,z=27,dx=2,dy=3,dz=2]
execute if entity @a[tag=in_game] unless score Gamemode Numbers matches 4 run tp @s[x=7,y=195,z=27,dx=2,dy=3,dz=2] 20043 10 -50
execute if entity @a[tag=in_game] if score Gamemode Numbers matches 4 run tp @s[x=7,y=195,z=27,dx=2,dy=3,dz=2] 30015 15 15
title @s actionbar ["",{"text":"[","color":"gray"},{"text":"Spectating, leave the area to quit.","color":"green"},{"text":"]","color":"gray"}]
execute as @s[gamemode=spectator,tag=!in_game] at @s if block ~ ~ ~ barrier run function load:spawn
#lobby
execute as @s[team=spectator,gamemode=adventure] unless block ~ ~ ~ light_gray_carpet run team join lobby @s

# Remove heart-beat
execute if score @s lowHealth matches 1.. run scoreboard players reset @s lowHealth
