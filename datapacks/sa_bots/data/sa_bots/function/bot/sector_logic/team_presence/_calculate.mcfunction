#executed by system once every 2 seconds


#determine sectors parts of the map are controlled by which team

#find blue presence, starting with sectors with at least 1 blue person
scoreboard players set #propagated_blue sab.var 0
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceBlue=10..}] run function sa_bots:bot/sector_logic/team_presence/propagate_blue_start
execute if score #propagated_blue sab.var matches 1.. run function sa_bots:bot/sector_logic/team_presence/propagate_blue_loop

#find red presence, starting with sectors with at least 1 red person
scoreboard players set #propagated_red sab.var 0
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1,scores={sab.teamPresenceRed=10..}] run function sa_bots:bot/sector_logic/team_presence/propagate_red_start
execute if score #propagated_red sab.var matches 1.. run function sa_bots:bot/sector_logic/team_presence/propagate_red_loop

#recalcuate net presence
execute as @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1] run function sa_bots:bot/sector_logic/team_presence/recalculate_net_presence