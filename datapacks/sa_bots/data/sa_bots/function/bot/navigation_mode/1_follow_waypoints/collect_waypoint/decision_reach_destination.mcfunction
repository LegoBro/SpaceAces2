#pop destination off the stack
data remove entity @s data.destinations[0]

#no destinations left? think about what we want to do next
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/_improvise_task_reach_destination

#determine what our goal is
execute store result score #goal_sector sab.var run data get entity @s data.destinations[0].sector
execute store result score #goal_id sab.var run data get entity @s data.destinations[0].id

#run logic again!
function sa_bots:bot/navigation_mode/1_follow_waypoints/collect_waypoint/decision_logic_get_data_again with entity @s data.move_targets[0]