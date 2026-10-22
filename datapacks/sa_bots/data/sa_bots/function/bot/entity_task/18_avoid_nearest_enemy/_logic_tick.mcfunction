#do we have a destination? if not, get one
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/18_avoid_nearest_enemy/pick_destination
#we should be avoiding the destination at each waypoint junction, not going towards it
tag @s add sab.botRunAwayFromDestination

#if we run out of time for this task, switch to something else
scoreboard players remove @s sab.botLimitedTaskTime 2
execute if score @s sab.botLimitedTaskTime matches ..0 run return run function sa_bots:bot/entity_task/complete_non_base_task_remove_destination
#=====

#update target every few seconds
scoreboard players remove @s sab.botNavThinkTime 2
execute if score @s sab.botNavThinkTime matches ..0 run function sa_bots:bot/entity_task/18_avoid_nearest_enemy/pick_destination