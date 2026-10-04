execute store result score #random sab.var run random value 1..100

#don't follow nearest teammate if we just did that
execute if score @s sab.botPreviousTask matches 3 run scoreboard players set #random sab.var 1

#high chance we go somewhere that's controlled by our team
execute if score #random sab.var matches 1..40 if score @s Team matches 1 run scoreboard players set #choice sab.var 9
execute if score #random sab.var matches 1..40 if score @s Team matches 2 run scoreboard players set #choice sab.var 10

#chance we go to the front line
execute if score #random sab.var matches 41..70 if score @s Team matches 1 run scoreboard players set #choice sab.var 12
execute if score #random sab.var matches 41..70 if score @s Team matches 2 run scoreboard players set #choice sab.var 13

#chance we go to a patrol point
execute if score #random sab.var matches 71..90 run scoreboard players set #choice sab.var 6

#chance we go at nearest teammate
execute if score #random sab.var matches 91..100 run scoreboard players set #choice sab.var 3

#go toward the front lines if it's been a long time since we've been in combat
execute if score @s sab.botTimeSinceCombat matches 750.. if score @s Team matches 1 run scoreboard players set #choice sab.var 12
execute if score @s sab.botTimeSinceCombat matches 750.. if score @s Team matches 2 run scoreboard players set #choice sab.var 13


#---------------------------------
#class-specific

execute store result score #random sab.var run random value 1..100

#sniper might go sniping
execute if score @s Class matches 3 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 7

#mechanic is likely to seek a turret spot
execute if score @s Class matches 9 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 8
#---------------------------------
