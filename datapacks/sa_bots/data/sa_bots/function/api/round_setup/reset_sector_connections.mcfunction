scoreboard players set #sector_connections_calculated sab.var 0
data modify storage sa_bots:waypoint sector_connections set value [0,{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]},{list:[]}]

#we will also clear sector team presence while we're in here
function sa_bots:bot/sector_logic/presence_clear_all

#0,0,0 must be loaded to run the rest of this!
execute unless loaded 0 50 0 run return fail
#=====

#set up some markers to track and sort through team presence data
kill @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1]
summon marker 0 50 0 {UUID:[I;14,0,0,1],Tags:["sab.sectorInformation","sab.representSector.1","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,2],Tags:["sab.sectorInformation","sab.representSector.2","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,3],Tags:["sab.sectorInformation","sab.representSector.3","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,4],Tags:["sab.sectorInformation","sab.representSector.4","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,5],Tags:["sab.sectorInformation","sab.representSector.5","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,6],Tags:["sab.sectorInformation","sab.representSector.6","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,7],Tags:["sab.sectorInformation","sab.representSector.7","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,8],Tags:["sab.sectorInformation","sab.representSector.8","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,9],Tags:["sab.sectorInformation","sab.representSector.9","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,10],Tags:["sab.sectorInformation","sab.representSector.10","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,11],Tags:["sab.sectorInformation","sab.representSector.11","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,12],Tags:["sab.sectorInformation","sab.representSector.12","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,13],Tags:["sab.sectorInformation","sab.representSector.13","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,14],Tags:["sab.sectorInformation","sab.representSector.14","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,15],Tags:["sab.sectorInformation","sab.representSector.15","ignore"]}
summon marker 0 50 0 {UUID:[I;14,0,0,16],Tags:["sab.sectorInformation","sab.representSector.16","ignore"]}
#assign scores so bots can quickly fetch information about where they want to go
scoreboard players set e-0-0-0-1 sab.botInSector 1
scoreboard players set e-0-0-0-2 sab.botInSector 2
scoreboard players set e-0-0-0-3 sab.botInSector 3
scoreboard players set e-0-0-0-4 sab.botInSector 4
scoreboard players set e-0-0-0-5 sab.botInSector 5
scoreboard players set e-0-0-0-6 sab.botInSector 6
scoreboard players set e-0-0-0-7 sab.botInSector 7
scoreboard players set e-0-0-0-8 sab.botInSector 8
scoreboard players set e-0-0-0-9 sab.botInSector 9
scoreboard players set e-0-0-0-a sab.botInSector 10
scoreboard players set e-0-0-0-b sab.botInSector 11
scoreboard players set e-0-0-0-c sab.botInSector 12
scoreboard players set e-0-0-0-d sab.botInSector 13
scoreboard players set e-0-0-0-e sab.botInSector 14
scoreboard players set e-0-0-0-f sab.botInSector 15
scoreboard players set e-0-0-0-10 sab.botInSector 16
#sectors that connect to others sectors get tag "sab.connectedToSector.X"

#get ready to track team presence
scoreboard players add @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1] sab.teamPresenceBlue 0
scoreboard players add @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1] sab.teamPresenceRed 0
scoreboard players add @e[type=marker,tag=sab.sectorInformation,x=0,y=50,z=0,distance=..1] sab.teamPresenceNet 0