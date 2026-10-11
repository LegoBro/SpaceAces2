#executed by a bot each time they want to check nearby objects of interest


#run this function again in a random amount of time
execute store result score @s sab.botObjectCheckTime run random value 1..5


#for some objects we might only care if they're the same team as us
scoreboard players operation #team sab.var = @s Team

#more likely to care if we're on low health
execute store result score #random sab.var run random value 1..100
scoreboard players operation #random sab.var -= @s displayHealth
#less likely to care if we're in a fight with somebody up close
execute if entity @s[scores={sab.botTargetEntityID=1..,sab.botTargetEntityDistance=..10}] run scoreboard players remove #random sab.var 25
execute if entity @s[tag=sab.botWantsToAvoidEnemy,scores={sab.botTargetEntityID=1..,sab.botTargetEntityDistance=..14}] run scoreboard players remove #random sab.var 75
#guaranteed to care if we explicitly set out to find healing
execute if entity @s[scores={sab.botTask=5,displayHealth=..99}] run scoreboard players add #random sab.var 100 

#quit out and do nothing if not interested
execute if score #random sab.var matches ..0 run return fail
#=====


scoreboard players set #target_count sab.var 0
scoreboard players set #found_target sab.var 0

#check for line-of-sight to health packs or healing sources. tag the ones with valid LOS
execute positioned ~ ~1.5 ~ as @e[type=!player,tag=sab.nearby.healing,distance=..10] facing entity @s eyes \
    if function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target_no_seethrough run scoreboard players add #target_count sab.var 1

#pick a random target with a valid LOS. also clean up tags on the rest
execute as @e[type=!player,distance=..10,tag=sab.possibleTarget,sort=random] run function sa_bots:bot/movement/check_nearby_objects/sort_through_possible_targets

#move toward target if we found a valid one
execute if score #found_target sab.var matches 1 run function sa_bots:bot/movement/check_nearby_objects/path_to_object_basic
execute if score #found_target sab.var matches 2 run function sa_bots:bot/movement/check_nearby_objects/path_to_object_stand_near_point