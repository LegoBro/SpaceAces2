#executed by the bot waypoint nearest to a given source of healing


#summon a Marker for decision-making
summon marker ~ ~ ~ {Tags:["sab.decisionMaker","sab.setData"]}

#hold reference to this waypoint so we can reference it again if chosen
data modify entity @e[type=marker,distance=..1,tag=sab.setData,limit=1] data.uuid4 set from entity @s data.uuid4

#figure out how far away we are from the bot's nearest waypoint
scoreboard players set #distance sab.var 999999999
execute if score #bot_in_sector sab.var matches 1 store result score #distance sab.var run data get entity @s data.distanceToSector[1][0]
execute if score #bot_in_sector sab.var matches 2 store result score #distance sab.var run data get entity @s data.distanceToSector[2][0]
execute if score #bot_in_sector sab.var matches 3 store result score #distance sab.var run data get entity @s data.distanceToSector[3][0]
execute if score #bot_in_sector sab.var matches 4 store result score #distance sab.var run data get entity @s data.distanceToSector[4][0]
execute if score #bot_in_sector sab.var matches 5 store result score #distance sab.var run data get entity @s data.distanceToSector[5][0]
execute if score #bot_in_sector sab.var matches 6 store result score #distance sab.var run data get entity @s data.distanceToSector[6][0]
execute if score #bot_in_sector sab.var matches 7 store result score #distance sab.var run data get entity @s data.distanceToSector[7][0]
execute if score #bot_in_sector sab.var matches 8 store result score #distance sab.var run data get entity @s data.distanceToSector[8][0]
execute if score #bot_in_sector sab.var matches 9 store result score #distance sab.var run data get entity @s data.distanceToSector[9][0]
execute if score #bot_in_sector sab.var matches 10 store result score #distance sab.var run data get entity @s data.distanceToSector[10][0]
execute if score #bot_in_sector sab.var matches 11 store result score #distance sab.var run data get entity @s data.distanceToSector[11][0]
execute if score #bot_in_sector sab.var matches 12 store result score #distance sab.var run data get entity @s data.distanceToSector[12][0]
execute if score #bot_in_sector sab.var matches 13 store result score #distance sab.var run data get entity @s data.distanceToSector[13][0]
execute if score #bot_in_sector sab.var matches 14 store result score #distance sab.var run data get entity @s data.distanceToSector[14][0]
execute if score #bot_in_sector sab.var matches 15 store result score #distance sab.var run data get entity @s data.distanceToSector[15][0]
execute if score #bot_in_sector sab.var matches 16 store result score #distance sab.var run data get entity @s data.distanceToSector[16][0]

#remember what sector we're in
execute store result score #sector sab.var run data get entity @s data.sector

#publish what we found (get ready to compare it to every other option)
execute as @e[type=marker,distance=..1,tag=sab.setData] run function sa_bots:bot/entity_task/log_possible_destination/publish
