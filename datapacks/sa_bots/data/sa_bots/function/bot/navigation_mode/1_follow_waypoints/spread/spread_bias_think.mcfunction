#executed by a bot


#we've decided we want to try seeking a new waypoint

#mutate bias x and z each time we go after a waypoint
function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/spread_bias_mutate

#store variables globally so our target waypoint can use them
scoreboard players operation #spread_bias_x sab.var = @s sab.botSpreadBiasX
scoreboard players operation #spread_bias_z sab.var = @s sab.botSpreadBiasZ