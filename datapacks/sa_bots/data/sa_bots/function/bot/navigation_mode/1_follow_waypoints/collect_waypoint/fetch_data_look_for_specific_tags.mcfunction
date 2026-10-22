#executed by waypoint that a bot is collecting


#if we get a match, add 100000 to the scoreboard and the bot will interpret that later down the line


#note: #look_for_waypoint_tag sab.var = <bot> sab.botLookingForWaypointTag

# 1 = build turret
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot.blue] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000
execute if score #look_for_waypoint_tag sab.var matches 1 if entity @s[tag=wp.turretSpot.red] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000

# 2 = sniper at sniper spot
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot.blue] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000
execute if score #look_for_waypoint_tag sab.var matches 2 if entity @s[tag=wp.sniperSpot.red] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000

# 3 = explosive class vantage point
execute if score #look_for_waypoint_tag sab.var matches 3 if entity @s[tag=wp.explosiveVantagePoint] run return run scoreboard players add #look_for_waypoint_tag sab.var 100000
