#Commands ran to allow the normal mode to kick-start
#item replace entity @a[tag=in_game] hotbar.8 with minecraft:air
fill 7 195 5 9 195 5 minecraft:air replace minecraft:oak_wall_sign
scoreboard players add Prestart Numbers 1
bossbar set main name ["",{"text":"Loading...",color:"white","type":"text"}]
bossbar set main players @a
bossbar set main max 120
execute store result bossbar main value run scoreboard players get Prestart Numbers


execute if score Prestart Numbers matches 2 as @a at @s run return run playsound minecraft:countdown voice @s ~ ~ ~ 50 1 1

execute if score Prestart Numbers matches 100 run return run function gamemode:comp/spawnpoint/reset

execute if score Prestart Numbers matches ..118 run return 0

execute if score Prestart Numbers matches 119 run function sa_bots:api/activation/activate_all_bots
#unless score bot.delayed_blue_spawn Numbers matches 1.. unless score bot.delayed_red_spawn Numbers matches 1.. 
#execute if score Prestart Numbers matches 119 unless score bot.delayed_blue_spawn Numbers matches 1.. run function sa_bots:api/activation/activate_all_bots_blue
#execute if score Prestart Numbers matches 119 unless score bot.delayed_red_spawn Numbers matches 1.. run function sa_bots:api/activation/activate_all_bots_red


execute if score Prestart Numbers matches 119 as @a[tag=in_game] at @s run function gamemode:comp/respawn/team


scoreboard players reset * game_damage
scoreboard players reset * game_healing
scoreboard players reset * game_dmg_take
scoreboard players reset * game_kills
tag @a[tag=in_game,tag=!stats] add stats

execute if score Prestart Numbers matches 120.. run bossbar set main players @a

return 1