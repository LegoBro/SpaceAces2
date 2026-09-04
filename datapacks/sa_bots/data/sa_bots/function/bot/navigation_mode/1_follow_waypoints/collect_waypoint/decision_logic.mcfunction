#executed by a bot when we've reached a waypoint


#must be above target, otherwise kick out
execute unless score @s sab.botMoveTargetDY matches -5.. run return 0
#=====

#are we in the air?
scoreboard players operation #on_ground sab.var = @s sab.onGround

#we can be blocked from collecting this waypoint based on several factors...
$execute as b-0-0-0-$(uuid4) run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/target_waypoint_gatekeeping
execute if score #found_target sab.var matches 0 run return 0
#=====


#determine what our goal is
execute store result score #goal_sector sab.var run data get entity @s data.destinations[0].sector
execute store result score #goal_id sab.var run data get entity @s data.destinations[0].id



#get data from waypoint
tag @s add sab.self
$execute as b-0-0-0-$(uuid4) run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/fetch_data


#get variables ready
scoreboard players set #found_target sab.var 0
scoreboard players set #chosen_outgoing sab.var -1
scoreboard players set #chosen_event sab.var 0

#now sort through generated sab.routeSort markers to see which ones we want to take
#note: "#distance_at_this_waypoint sab.var" is the distance to destination at this waypoint
scoreboard players set #count sab.var 0
scoreboard players set #count_valid sab.var 0
execute as @e[type=marker,distance=..1,tag=sab.routeSort] run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/routes_count_valid
execute if score #count_valid sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/routes_pick_from_valid
execute unless score #count_valid sab.var matches 1.. if score #count sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/routes_pick_random

#clean up self tag
tag @s remove sab.self

#debug, say which outgoing was chosen
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator] [{translate:"sa_bot.debug.chosen_outgoing",with:[{score:{name:"#chosen_outgoing",objective:"sab.var"}}],color:yellow}]

#look up the direction we chose
execute store result storage sa_bots:generic index int 1 run scoreboard players get #chosen_outgoing sab.var
$execute if score #chosen_outgoing sab.var matches 0.. as b-0-0-0-$(uuid4) run \
    function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/get_chosen_target with storage sa_bots:generic

#adopt target data
execute if score #found_target sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/adopt_target_data

#execute event, if we have one
execute if score #chosen_event sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/_event_execute_index

#if we didn't find anything valid, go into "roam" mode for a while
execute if score #found_target sab.var matches 0 run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets



#cleanup
scoreboard players reset * sab.markDistance
scoreboard players reset * sab.markIndex
kill @e[type=marker,distance=..1,tag=sab.routeSort]

#man, this function and its subroutines were a piece of work...