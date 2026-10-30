#executed by anything

#$(id) = index of the bot
#$(username) = username of this bot


#keep track of whether a match was found
scoreboard players set #test sab.var 0


#if a player has our username, change our name to <username>2
$execute if entity $(username) run scoreboard players add #test sab.var 1
$execute if score #test sab.var matches 1 run data modify storage sa_bots:bot_data bots[$(id)].profile.username set value "$(username)2"

#someone has the name <username>2? ok, well there's no possible way someone can have a $ in their name
$execute if entity $(username)2 run scoreboard players add #test sab.var 10
$execute if score #test sab.var matches 11 run data modify storage sa_bots:bot_data bots[$(id)].profile.username set value "$$(username)"
#gottem

#if something changed, apply update to the bot entity (if it exists)
$execute if score #test sab.var matches 1.. as @e[type=mannequin,tag=sab.botEntity,scores={sab.botID=$(id)}] run function sa_bots:bot/setup/update_bot_username {bot_i:$(id)}
