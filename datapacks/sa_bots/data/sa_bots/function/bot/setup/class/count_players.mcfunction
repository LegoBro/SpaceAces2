#executed by a player or bot entity


#count towards teams
execute if score @s Team matches 1 run function sa_bots:bot/setup/class/count_players_blue
execute if score @s Team matches 2 run function sa_bots:bot/setup/class/count_players_red
execute unless score @s Team matches 1..2 run function sa_bots:bot/setup/class/count_players_ffa

#lump players and bots together for some shared functions later down the road (bots already have the tag)
tag @s[type=player,tag=!sab.activePlayer] add sab.activePlayer

#always count towards total
scoreboard players add #playerCount sab.var 1