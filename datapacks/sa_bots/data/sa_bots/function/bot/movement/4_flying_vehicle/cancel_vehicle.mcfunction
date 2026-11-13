#leave any vehicle we may be riding
ride @s dismount
tag @s remove sab.botHasVehicle

#run exit function for drone operator
execute if entity @s[tag=class.mechanic.manual_override.drone_operator] run function class:4/mechanic/manual_override/return

#re-target nearest waypoint
function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately