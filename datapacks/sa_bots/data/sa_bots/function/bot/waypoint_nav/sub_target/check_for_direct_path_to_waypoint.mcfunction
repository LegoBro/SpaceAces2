#executed by bot
#execute at any position, usually at the bot's position or at a sub-target candidate position


#keep track of whether a path is found or not
scoreboard players set #found_direct_path sab.var 0

#max range of 100
scoreboard players set #recursions sab.var 100
$execute as b-0-0-0-$(uuid4) facing entity @s feet rotated ~ 0 run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive

#no path found? be ready to improvise
execute if score #found_direct_path sab.var matches 0 run scoreboard players set @s sab.botLookingForSubTargets 1