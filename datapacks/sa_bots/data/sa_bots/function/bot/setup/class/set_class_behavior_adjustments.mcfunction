#executed by a newly spawned bot entity


#gunner prefers to shoot nearest targets
execute if score @s Class matches 5 run tag @s add sab.botPrioritizeNearbyTargets
#mechanic prefers to shoot nearest targets
execute if score @s Class matches 9 run tag @s add sab.botPrioritizeNearbyTargets


#scout is more aggressive and less cooperative
execute if score @s Class matches 1 run scoreboard players add @s sab.botAggression 1
execute if score @s Class matches 1 run scoreboard players remove @s sab.botCooperativeness 2
#sniper is less aggressive and less cooperative
execute if score @s Class matches 3 run scoreboard players remove @s sab.botAggression 2
execute if score @s Class matches 3 run scoreboard players remove @s sab.botCooperativeness 2
#gunner is more cooperative
execute if score @s Class matches 5 run scoreboard players add @s sab.botCooperativeness 1
#healer is more cooperative
execute if score @s Class matches 6 run scoreboard players add @s sab.botCooperativeness 2
#mobility is more aggressive and less cooperative
execute if score @s Class matches 8 run scoreboard players add @s sab.botAggression 1
execute if score @s Class matches 8 run scoreboard players remove @s sab.botCooperativeness 1
#mechanic is less aggressive
execute if score @s Class matches 9 run scoreboard players remove @s sab.botAggression 2
#scientist is more cooperative and less aggressive
execute if score @s Class matches 10 run scoreboard players add @s sab.botCooperativeness 2
execute if score @s Class matches 10 run scoreboard players remove @s sab.botAggression 1
#infiltraitor is less cooperative
execute if score @s Class matches 11 run scoreboard players remove @s sab.botCooperativeness 2
#seeker is less cooperative
execute if score @s Class matches 13 run scoreboard players remove @s sab.botCooperativeness 1
#shocksmith is more cooperative and aggressive
execute if score @s Class matches 14 run scoreboard players add @s sab.botCooperativeness 2
execute if score @s Class matches 14 run scoreboard players add @s sab.botAggression 1

#make sure aggression and cooperativeness are clamped in range 1-10
execute if score @s sab.botAggression matches ..0 run scoreboard players set @s sab.botAggression 1
execute if score @s sab.botAggression matches 11.. run scoreboard players set @s sab.botAggression 10
execute if score @s sab.botCooperativeness matches ..0 run scoreboard players set @s sab.botCooperativeness 1
execute if score @s sab.botCooperativeness matches 11.. run scoreboard players set @s sab.botCooperativeness 10