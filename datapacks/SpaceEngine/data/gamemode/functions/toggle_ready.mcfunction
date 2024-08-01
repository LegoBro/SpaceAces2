tag @s[tag=!ready] add temp
tag @s[tag=!temp] remove ready
tag @s[tag=temp] add ready
execute if entity @s[tag=ready] run playsound block.note_block.chime block @s ~ ~ ~ 1 2 1
execute if entity @s[tag=!ready] run playsound block.note_block.chime block @s ~ ~ ~ 1 0 1

function gamemode:update_lobby_players
execute if score RedPlay Numbers = TotPlay Numbers if score RedPlay Numbers >= MinPlay Numbers run function gamemode:launch_game
execute if score RedPlay Numbers < TotPlay Numbers if score Mission Numbers matches 0.. run function gamemode:abort_game

tag @s remove temp
scoreboard players reset @s rightClick

execute if score Gamemode Numbers matches 4 run forceload add 30046 94 29857 -95
execute unless score Gamemode Numbers matches 4 run forceload remove 30046 94 29857 -95
