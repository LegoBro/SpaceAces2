execute store result score #random sab.var run random value 1..100

#chance we seek a random waypoint
execute if score #random sab.var matches 1..20 run scoreboard players set #choice sab.var 0

#good chance we go somewhere underpopulated
execute if score #random sab.var matches 21..60 run scoreboard players set #choice sab.var 11

#good chance we go to a patrol point
execute if score #random sab.var matches 61..85 run scoreboard players set #choice sab.var 6

#might go right at the nearest enemy
execute if score #random sab.var matches 86..100 run scoreboard players set #choice sab.var 1



#---------------------------------
#class-specific

execute store result score #random sab.var run random value 1..100

#sniper might go sniping
execute if score @s Class matches 3 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 7
#---------------------------------