##Commands ran once game is Finished
function help:a86d3a90d015d3656219ee1a185fad68072458ab4054a276c645a8ffb7a11736
scoreboard objectives setdisplay sidebar
execute as @a[tag=stats,tag=!escape,team=!red] run tellraw @s [{"text":"","type":"text"},{"text":"\n\n\n\n☐\n\n","font":"minecraft:stats","type":"text"},{"text":"Your damage dealt last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue","type":"score"},{"text":"\nEnemies knocked down: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue","type":"score"},{"text":"\nYour damage taken last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red","type":"score"},{"text":"\nYour healing last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_healing"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

# Convert time Numbers into time.hours and time.minutes and time.seconds and time.milliseconds
function scoreboard:time
execute as @a[tag=stats,tag=escape,team=!red] run tellraw @s [{"text":"","type":"text"},{"text":"\n\n\n\n☐\n\n","font":"minecraft:stats","type":"text"},{"text":"Your damage dealt last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue","type":"score"},{"text":"\nEnemies knocked down: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue","type":"score"},{"text":"\nYour damage taken last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red","type":"score"},{"text":"\nYour healing last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_healing"},"color":"green","type":"score"},{"text":"\n\nPoints Scored: ","color":"white","type":"text"},{"score":{"name":"escape.points","objective":"Numbers"},"color":"green","type":"score"},{"text":"\nTime: ","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".0","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".0","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".0","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]

execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green","type":"score"},{"text":":0","color":"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green","type":"score"},{"text":".0","color":"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats","color":"white","type":"text"}]


execute as @a[tag=stats,team=red] run tellraw @s [{"text":"","type":"text"},{"text":"\n\n\n\n☒\n\n","font":"minecraft:stats","type":"text"},{"text":"Your damage dealt last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue","type":"score"},{"text":"\nEnemies knocked down: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue","type":"score"},{"text":"\nYour damage taken last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red","type":"score"},{"text":"\nYour healing last round: ","color":"white","type":"text"},{"score":{"name":"@s","objective":"game_healing"},"color":"green","type":"score"},{"text":"\n\n☓","font":"minecraft:stats","type":"text"}]

execute as @a[tag=in_game] run function load:spawn
tag @a[tag=in_game] remove in_game
tag @a[tag=escape] remove escape
execute as @a[team=spectator] run function load:spawn
bossbar set blue players
bossbar set red players
bossbar set main players
scoreboard players set ActiveMode Numbers -1
scoreboard players reset * display
tag @a[tag=ready] remove ready
setblock 9 195 5 minecraft:oak_wall_sign[facing=east]
data modify block 9 195 5 front_text.messages[1] set value '{"text":"[Exit]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function gamemode:exit_team_selection"},"type":"text"}'
setblock 7 195 5 minecraft:oak_wall_sign[facing=west]
data modify block 7 195 5 front_text.messages[1] set value '{"text":"[Exit]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function gamemode:exit_team_selection"},"type":"text"}'
scoreboard players reset @a i
scoreboard players set waveDelay Numbers 0
scoreboard players set wave Numbers 0
scoreboard players reset Enemies display
execute positioned 29958 7 11 run kill @e[type=!minecraft:player,distance=..500,tag=!map_anchor,tag=!health_pack]
execute unless entity @e[team=blue] unless entity @e[team=red] run function load:unload_teams

forceload remove all

return 1