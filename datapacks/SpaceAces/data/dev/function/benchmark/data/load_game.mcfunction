# World ID
data modify storage game_history:current game.world_id set from storage global:data world_id

# Game ID
execute store result score #GAME_ID Numbers run data get storage global:data game_id
execute store result storage global:data game_id int 1 run scoreboard players add #GAME_ID Numbers 1
data modify storage game_history:current game.game_id set from storage global:data game_id


# Version Number
data modify storage game_history:current game.version set value ["Alpha",4]

data modify storage game_history:current game.gamemode set from storage space_aces:selected_gamemode gamemode
data modify storage game_history:current game.map set from storage space_aces:selected_map map

