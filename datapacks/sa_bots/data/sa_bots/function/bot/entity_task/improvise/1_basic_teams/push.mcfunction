execute store result score #random sab.var run random value 1..100

#low chance we go somewhere that's controlled by our team
execute if score #random sab.var matches 1..10 if score @s Team matches 1 run scoreboard players set #choice sab.var 9
execute if score #random sab.var matches 1..10 if score @s Team matches 2 run scoreboard players set #choice sab.var 10

#chance we go to the front line
execute if score #random sab.var matches 11..50 if score @s Team matches 1 run scoreboard players set #choice sab.var 12
execute if score #random sab.var matches 11..50 if score @s Team matches 2 run scoreboard players set #choice sab.var 13

#chance we go to a patrol point
execute if score #random sab.var matches 51..74 run scoreboard players set #choice sab.var 6

#might go right at the nearest enemy
execute if score #random sab.var matches 75..100 run scoreboard players set #choice sab.var 1


#player low in cooperativeness might go for a completely random point
execute store result score #random sab.var run random value 1..30
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..5 run scoreboard players set #choice sab.var 0

#might go into enemy territory if really aggressive
execute store result score #random sab.var run random value 1..30
scoreboard players operation #random sab.var += @s sab.botAggression
execute if score #random sab.var matches 35.. if score @s Team matches 1 run scoreboard players set #choice sab.var 10
execute if score #random sab.var matches 35.. if score @s Team matches 2 run scoreboard players set #choice sab.var 9


#---------------------------------
#class-specific

execute store result score #random sab.var run random value 1..100

#sniper might go sniping
execute if score @s Class matches 3 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 7

#mechanic is likely to seek a turret spot
execute if score @s Class matches 9 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 8
#---------------------------------


#---------------------------------
#follow behavior

#keep following the player we're following
execute if score @s sab.botFollowingPlayer matches 1.. run scoreboard players set #choice sab.var 4
#low skill bot might pause if we're reached the person we're following
execute if score @s sab.botSkill matches ..4 if score #choice sab.var matches 4 if score @s sab.botDestinationUUID = @s sab.botLastDestinationUUID store result score @s sab.botPauseTime run random value 5..25
#high skill bot will roam the sector for a brief moment if we're reached the person we're following
execute if score @s sab.botSkill matches 5.. if score #choice sab.var matches 4 if score @s sab.botDestinationUUID = @s sab.botLastDestinationUUID run scoreboard players set #choice sab.var 14
#---------------------------------