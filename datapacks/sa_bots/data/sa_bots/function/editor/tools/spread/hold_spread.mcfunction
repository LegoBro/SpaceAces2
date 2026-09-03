#get temporary tag
tag @s add sab.seeSpreadBoundaries

#figure out what we're looking at, and summon a temp marker there
scoreboard players operation #recursions sab.var = #TOOL_RAYCAST_RANGE sab.var
execute positioned ~ ~1.8 ~ positioned ^ ^ ^1 run function sa_bots:editor/utility/raycast_to_cursor

#particles highlight the thing we're looking at
execute at a-0-0-0-1 at @e[type=marker,tag=sab.botWaypoint,distance=..2,limit=1,sort=nearest] run particle block{block_state:"white_concrete"} ~ ~.25 ~ 0.05 0.05 0.05 1 1 force @s
execute at a-0-0-0-1 run particle crit ~ ~ ~ 0.05 0.05 0.05 0 3 force @s

#use item
execute if score @s sab.carrotInput matches -2147483648..2147483647 unless score @s sab.inputCooldown matches 1.. run function sa_bots:editor/tools/spread/use_spread

#if we have a waypoint we are focused on, highlight it with particles
execute if score @s sab.waypointSpreadFocus matches 1.. run function sa_bots:editor/tools/spread/highlight_spread_focus

#nearby stuff should show boundaries
execute if score #10Hz sab.var matches 1 positioned ^ ^ ^9 run tag @e[type=marker,tag=sab.botWaypoint,distance=..13] add sab.visualizeBotWaypointSpread

#clean-up
kill a-0-0-0-1