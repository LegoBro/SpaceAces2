#executed by a player or bot entity


#count towards teams
execute if score @s Team matches 1 run function sa_bots:bot/setup/class/count_players_blue
execute if score @s Team matches 2 run function sa_bots:bot/setup/class/count_players_red
execute unless score @s Team matches 1..2 run function sa_bots:bot/setup/class/count_players_ffa

#bot figures out what sector it is in
scoreboard players set #read sab.var 0
execute at @s as @e[type=marker,tag=sab.botWaypointGeneric,distance=..20,limit=1,sort=nearest] run function sa_bots:bot/sector_logic/read_sector_of_waypoint
execute if score #read sab.var matches 1.. run scoreboard players operation @s sab.botInSector = #read sab.var

#always count towards total
scoreboard players add #playerCount sab.var 1