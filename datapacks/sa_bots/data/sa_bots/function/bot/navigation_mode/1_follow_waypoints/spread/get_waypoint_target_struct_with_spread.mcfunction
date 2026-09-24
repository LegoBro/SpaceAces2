#executed by a waypoint that our bot is about to target
#if loaded ~ ~ ~



#while we're still the execution context: get our uuid4
data modify storage sa_bots:generic target.uuid4 set from entity @s data.uuid4


#if we have data, do spread
execute if data entity @s data.spread run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/do_a_spread

#didn't grab data yet? just grab our coordinates, then
execute unless score #found_target sab.var matches 1.. run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/get_waypoint_position


#clear variables (only need to clear x since that's the prerequisite we check for. z can be garbage)
scoreboard players reset #spread_bias_x sab.var
#scoreboard players reset #spread_bias_z sab.var