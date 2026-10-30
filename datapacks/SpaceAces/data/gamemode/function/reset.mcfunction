##Commands ran once game is Finished

#execute store result score #bot_count Numbers run data get storage sa_bots:bot_data bots
#execute as @e[type=mannequin,tag=hb] run function dev:benchmark/add_bot

# Copy ALL The data
function dev:benchmark/data/compress/bots

function dev:benchmark/data/compress/players

execute unless data storage game_history:current game.win_state run data modify storage game_history:current game.win_state set value "force_ended"

function sa_bots:api/delete_bots/delete_all_bots

#function help:a86d3a90d015d3656219ee1a185fad68072458ab4054a276c645a8ffb7a11736
scoreboard objectives setdisplay sidebar
execute as @a[tag=stats,tag=!escape] run function player:stats/view

# Convert time Numbers into time.hours and time.minutes and time.seconds and time.milliseconds
#function scoreboard:time
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".0",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches 10.. if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".0",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches 10.. if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".0",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches 10.. run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]
#execute as @a[tag=stats,tag=escape,team=!red] if score time.minutes Numbers matches ..9 if score time.seconds Numbers matches ..9 if score time.ms Numbers matches ..9 run tellraw @s [{"score":{"name":"time.hours","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.minutes","objective":"Numbers"},color:"green","type":"score"},{"text":":0",color:"green","type":"text"},{"score":{"name":"time.seconds","objective":"Numbers"},color:"green","type":"score"},{"text":".0",color:"green","type":"text"},{"score":{"name":"time.ms","objective":"Numbers"},color:"green","type":"score"},{"text":"\n\n☑","font":"minecraft:stats",color:"white","type":"text"}]


#execute as @a[tag=in_game] run function load:spawn
#tag @a[tag=in_game] remove in_game
tag @a[tag=escape] remove escape
execute as @a[tag=spectator] run function player:load
bossbar set blue players
bossbar set red players
bossbar set main players
execute as @a[tag=ready] run function player:load
scoreboard players set ActiveMode Numbers -1
scoreboard players reset * display
tag @a[tag=ready] remove ready
#setblock 9 195 5 minecraft:oak_wall_sign[facing=east]
#data modify block 9 195 5 allow_op_features set value true
#data modify block 9 195 5 front_text.messages[1] set value {text:"[Exit]",color:"dark_red","bold":true,click_event:{"action":"run_command",command:"/function gamemode:exit_team_selection"},"type":"text",allow_op_features:1b}
#setblock 7 195 5 minecraft:oak_wall_sign[facing=west]
#data modify block 7 195 5 allow_op_features set value true
#data modify block 7 195 5 front_text.messages[1] set value {text:"[Exit]",color:"dark_red","bold":true,click_event:{"action":"run_command",command:"/function gamemode:exit_team_selection"},"type":"text",allow_op_features:1b}
scoreboard players reset @a i
scoreboard players set waveDelay Numbers 0
scoreboard players set wave Numbers 0
scoreboard players reset Enemies display
#execute positioned 29958 7 11 run kill @e[type=!minecraft:player,distance=..500,tag=!map_anchor,tag=!health_pack]
execute unless entity @e[team=blue] unless entity @e[team=red] run function load:unload_teams

forceload remove all
forceload add 0 0

function gamemode:map_sign_display with storage space_aces:selected_map map

effect clear @a[team=lobby] invisibility

scoreboard players set bot.delayed_blue_spawn Numbers 0
scoreboard players set bot.delayed_red_spawn Numbers 0

# Game Queue
execute store result storage game_history:current game.length int 1 run scoreboard players get current_game_time benchmark
scoreboard players set current_game_time benchmark 0

# Add game to array
data modify storage game_history:games games prepend from storage game_history:current game

# Delete game history game
data remove storage game_history:current game

return 1