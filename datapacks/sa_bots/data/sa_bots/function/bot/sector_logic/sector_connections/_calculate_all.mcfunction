#we will only run this if exactly 1 level is loaded
scoreboard players set #success sab.var 1
execute as @e[type=marker,tag=sab.botWaypointGeneric,limit=1] at @s \
    if entity @e[type=marker,tag=sab.botWaypointGeneric,distance=400..] run scoreboard players set #success sab.var 0
execute if score #success sab.var matches 0 run return fail
#=====

#check for important stuff on all waypoints
execute as @e[type=marker,tag=sab.botWaypointGeneric] run function sa_bots:bot/sector_logic/sector_connections/analyze_waypoint

#calculations are done. don't do this again
scoreboard players set #calculate_sector_connections sab.var 1000000

#all bots should re-evaluate what they're doing now that there is more accurate information available
tag @e[type=mannequin,tag=sab.botEntity] add sab.botMustPickNewTask

#some modes might make bots do a rollout to the objective shortly after the game starts
execute if score #blue_rollout_to_mid sab.var matches 1 run tag @e[type=mannequin,tag=sab.botEntity,scores={Team=1}] add sab.botRolloutToMid
execute if score #red_rollout_to_mid sab.var matches 1 run tag @e[type=mannequin,tag=sab.botEntity,scores={Team=2}] add sab.botRolloutToMid