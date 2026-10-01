scoreboard players set #propagated_blue sab.var 0
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1,tag=sab.propagateAgain.blue] run function sa_bots:bot/sector_logic/team_presence/propagate_blue_start
execute if score #propagated_blue sab.var matches 1.. run function sa_bots:bot/sector_logic/team_presence/propagate_blue_loop