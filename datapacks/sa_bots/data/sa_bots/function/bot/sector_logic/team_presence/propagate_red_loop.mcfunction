scoreboard players set #propagated_red sab.var 0
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1,tag=sab.propagateAgain.red] run function sa_bots:bot/sector_logic/team_presence/propagate_red_start
execute if score #propagated_red sab.var matches 1.. run function sa_bots:bot/sector_logic/team_presence/propagate_red_loop