execute store result score #random sab.var run random value 1..100

#chance we go into enemy front line
execute if score #random sab.var matches 1..10 if score @s Team matches 1 run scoreboard players set #choice sab.var 12
execute if score #random sab.var matches 1..10 if score @s Team matches 2 run scoreboard players set #choice sab.var 13

#chance we go to the active control point
execute if score #random sab.var matches 11..59 run scoreboard players set #choice sab.var 16
#chance we go near the active control point
execute if score #random sab.var matches 60..95 run scoreboard players set #choice sab.var 17

#might go right at the nearest enemy
execute if score #random sab.var matches 96..100 run scoreboard players set #choice sab.var 1


#player low in cooperativeness might go for a completely random point
execute store result score #random sab.var run random value 0..30
scoreboard players operation #random sab.var += @s sab.botCooperativeness
execute if score #random sab.var matches ..4 run scoreboard players set #choice sab.var 0

#---------------------------------
#class-specific

execute store result score #random sab.var run random value 1..100

#sniper might go sniping
execute if score @s Class matches 3 if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 7

#mechanic is likely to seek a turret spot
execute if entity @s[scores={Class=9,sab.hasTurret=0}] if score #random sab.var matches 1..50 run scoreboard players set #choice sab.var 8
execute if entity @s[scores={Class=9,sab.hasTurret=1..}] if score #random sab.var matches 1..10 run scoreboard players set #choice sab.var 8
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