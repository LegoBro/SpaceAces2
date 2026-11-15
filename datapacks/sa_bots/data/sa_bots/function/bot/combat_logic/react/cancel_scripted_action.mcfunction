#executed by bot entity


#end the scripted action
scoreboard players reset @s sab.botScriptedAction

#re-target nearest waypoint
function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately