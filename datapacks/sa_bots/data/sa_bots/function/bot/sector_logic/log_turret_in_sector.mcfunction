#executed by a turret

execute if score @s Team matches 1 as @e[type=marker,tag=sab.botWaypointGeneric,distance=..20,limit=1,sort=nearest] run function sa_bots:bot/sector_logic/log_turret_in_sector_blue
execute if score @s Team matches 2 as @e[type=marker,tag=sab.botWaypointGeneric,distance=..20,limit=1,sort=nearest] run function sa_bots:bot/sector_logic/log_turret_in_sector_red
