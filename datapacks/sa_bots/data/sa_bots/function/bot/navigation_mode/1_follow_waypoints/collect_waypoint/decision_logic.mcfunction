#executed by a bot when we've reached a waypoint


#must be above target, otherwise kick out
execute unless score @s sab.botMoveTargetDY matches -5.. run return 0
#=====

#reset sub-target look state
scoreboard players set @s sab.botLookingForSubTargets 0
#note about sab.botLookingForSubTargets:
# -1 = don't generate sub-targets until we reach our next primary target
# 0 = not looking, but will look if stuck
# 1 = actively looking
# 2 = already generated a sub-target

#are we chasing a sub-target? simply pop it off the stack and go for the next target we have. no need for all the complicated nonsense in this function
execute if data entity @s data.move_targets[0].metadata{is_sub_route:1} run \
    return run function sa_bots:bot/waypoint_nav/pop_move_target_off_stack
#=====

#are we in the air?
scoreboard players operation #on_ground sab.var = @s sab.onGround

#we can be blocked from collecting this waypoint based on several factors...
$execute as b-0-0-0-$(uuid4) run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/target_waypoint_gatekeeping
execute if score #found_target sab.var matches 0 run return 0
#=====


#determine what our goal is
scoreboard players set #goal_sector sab.var 0
scoreboard players set #goal_id sab.var -1
execute if data entity @s data.destinations[0] store result score #goal_sector sab.var run data get entity @s data.destinations[0].sector
execute if data entity @s data.destinations[0] store result score #goal_id sab.var run data get entity @s data.destinations[0].id
execute if score #goal_id sab.var matches -1 run tellraw @a[gamemode=!adventure] {text:"[ ! ] Bot reached a waypoint and doesn't have a destination!",color:red}



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

#mutate spread bias x and z each time we go after a waypoint
execute if score #chosen_outgoing sab.var matches 0.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/spread_bias_think

#look up the direction we chose
execute store result storage sa_bots:generic index int 1 run scoreboard players get #chosen_outgoing sab.var
$execute if score #chosen_outgoing sab.var matches 0.. as b-0-0-0-$(uuid4) run \
    function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/get_chosen_target with storage sa_bots:generic

#adopt target data
execute if score #found_target sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/adopt_target_data

#check if there's an easy path from us to the target. if not, we might need to improvise down the road
execute if score #found_target sab.var matches 1.. if score @s sab.botMoveState matches 0..1 run \
    function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_prep

#execute event, if we have one
execute if score #chosen_event sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/_event_execute_index

#if we didn't find anything valid, go into "roam" mode for a while
execute if score #found_target sab.var matches 0 run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets



#cleanup
scoreboard players reset * sab.markDistance
scoreboard players reset * sab.markIndex
kill @e[type=marker,distance=..1,tag=sab.routeSort]

#man, this function and its subroutines were a piece of work...