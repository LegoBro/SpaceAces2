##Commands ran once game is Finished
data merge block 8 200 65 {Text2:"{\"text\":\"Launch Mission\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function gamemode:launch_game\"}}",Text3:"{\"text\":\"\",\"color\":\"green\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}}"}
execute as @a[tag=stats,team=!red,tag=!escape] run tellraw @s [{"text":""},{"text":"\n\n\n\n☐\n\n","font":"minecraft:stats"},{"text":"Your damage dealt last round: ","color":"white"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue"},{"text":"\nEnemies knocked down: ","color":"white"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue"},{"text":"\nYour damage taken last round: ","color":"white"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red"},{"text":"\nYour healing last round: ","color":"white"},{"score":{"name":"@s","objective":"game_healing"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

# Convert time Numbers into time.hours and time.minutes and time.seconds and time.milliseconds
function scoreboard:time
execute as @a[tag=stats,team=!red,tag=escape] run tellraw @s [{"text":""},{"text":"\n\n\n\n☐\n\n","font":"minecraft:stats"},{"text":"Your damage dealt last round: ","color":"white"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue"},{"text":"\nEnemies knocked down: ","color":"white"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue"},{"text":"\nYour damage taken last round: ","color":"white"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red"},{"text":"\nYour healing last round: ","color":"white"},{"score":{"name":"@s","objective":"game_healing"},"color":"green"},{"text":"\n\nPoints Scored: ","color":"white"},{"score":{"name":"escape.points","objective":"Numbers"},"color":"green"},{"text":"\nTime: ","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]

execute as @a[tag=stats,team=!red,tag=escape] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.minutes","objective":"Numbers"},"color":"green"},{"text":":0","color":"green"},{"score":{"name":"time.seconds","objective":"Numbers"},"color":"green"},{"text":".0","color":"green"},{"score":{"name":"time.ms","objective":"Numbers"},"color":"green"},{"text":"\n\n☑","font":"minecraft:stats","color":"white"}]


execute as @a[tag=stats,team=red] run tellraw @s [{"text":""},{"text":"\n\n\n\n☒\n\n","font":"minecraft:stats"},{"text":"Your damage dealt last round: ","color":"white"},{"score":{"name":"@s","objective":"game_damage"},"color":"blue"},{"text":"\nEnemies knocked down: ","color":"white"},{"score":{"name":"@s","objective":"game_kills"},"color":"dark_blue"},{"text":"\nYour damage taken last round: ","color":"white"},{"score":{"name":"@s","objective":"game_dmg_take"},"color":"dark_red"},{"text":"\nYour healing last round: ","color":"white"},{"score":{"name":"@s","objective":"game_healing"},"color":"green"},{"text":"\n\n☓","font":"minecraft:stats"}]

execute as @a[tag=in_game] run function load:spawn
tag @a[tag=in_game] remove in_game
tag @a[tag=escape] remove escape
execute as @a[team=spectator] run function load:spawn
bossbar set blue players
bossbar set red players
bossbar set main players
scoreboard players reset ActiveMode
scoreboard players reset * display
tag @a[tag=ready] remove ready
setblock 9 195 5 oak_wall_sign[facing=east]
data merge block 9 195 5 {Text2:"{\"text\":\"[Exit]\",\"color\":\"dark_red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function gamemode:exit_team_selection\"}}"}
setblock 7 195 5 oak_wall_sign[facing=west]
data merge block 7 195 5 {Text2:"{\"text\":\"[Exit]\",\"color\":\"dark_red\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function gamemode:exit_team_selection\"}}"}
scoreboard players reset @a i
scoreboard players set waveDelay Numbers 0
scoreboard players set wave Numbers 0
scoreboard players reset Enemies display
execute positioned 29958 7 11 run kill @e[type=!player,tag=!map_anchor,tag=!health_pack,distance=..500]
execute unless entity @e[team=blue] unless entity @e[team=red] run function load:unload_teams
