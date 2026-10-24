execute store result score #random sab.var run random value 1..100

#good chance we go to the sector with an active control point
execute if score #random sab.var matches 1..45 run scoreboard players set #choice sab.var 17

#good chance we go somewhere underpopulated
execute if score #random sab.var matches 46..60 run scoreboard players set #choice sab.var 11

#good chance we go to a patrol point
execute if score #random sab.var matches 61..85 if entity @s[scores={sab.botSkill=..5,sab.botAggression=6..}] run scoreboard players set #choice sab.var 6
execute if score #random sab.var matches 61..85 unless entity @s[scores={sab.botSkill=..5,sab.botAggression=6..}] run scoreboard players set #choice sab.var 22

#might go right at the nearest enemy
execute if score #random sab.var matches 86..95 run scoreboard players set #choice sab.var 1

#might go right at a random enemy
execute if score #random sab.var matches 96..100 run scoreboard players set #choice sab.var 15


#---------------------------------
#class-specific

execute store result score #random sab.var run random value 1..100

#sniper might go sniping
execute if score @s Class matches 3 if score #random sab.var matches 1..50 \
    if entity @s[scores={sab.botSkill=..5,sab.botAggression=6..}] run scoreboard players set #choice sab.var 7
execute if score @s Class matches 3 if score #random sab.var matches 1..50 \
    unless entity @s[scores={sab.botSkill=..5,sab.botAggression=6..}] run scoreboard players set #choice sab.var 24
#---------------------------------


#go directly at a random enemy if it's been a long time since we've been in combat
execute if score @s sab.botTimeSinceCombat matches 500.. if score #random sab.var matches ..33 run scoreboard players set #choice sab.var 15
execute if score @s sab.botTimeSinceCombat matches 625.. if score #random sab.var matches ..66 run scoreboard players set #choice sab.var 15
execute if score @s sab.botTimeSinceCombat matches 750.. run scoreboard players set #choice sab.var 15