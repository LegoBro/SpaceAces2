#executed by a waypoint that our bot is about to target
#if loaded ~ ~ ~



#read spread data (i.e. spread amplitude in x and z)
execute store result score #spread_x sab.var run data get entity @s data.spread[0]
execute store result score #spread_z sab.var run data get entity @s data.spread[1]

#use our buddy Earl for this
tp e-0-0-0-1 ~ ~ ~
#Q: why are we involving another entity in this? why not just add onto x and z afterwards?
#A: we want to grab coordinates with full precision, and i don't feel like using /compute right now


#use indexes to apply spread via teleports
#...yeah we could write a macro for this pretty fast, but i care more about performance right now

#x
execute if score #spread_x sab.var matches 1 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/1
execute if score #spread_x sab.var matches 2 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/2
execute if score #spread_x sab.var matches 3 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/3
execute if score #spread_x sab.var matches 4 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/4
execute if score #spread_x sab.var matches 5 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/5
execute if score #spread_x sab.var matches 6 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/6
execute if score #spread_x sab.var matches 7 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/7
execute if score #spread_x sab.var matches 8 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/8
execute if score #spread_x sab.var matches 9 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/9
execute if score #spread_x sab.var matches 10.. at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/x/10

#z
execute if score #spread_z sab.var matches 1 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/1
execute if score #spread_z sab.var matches 2 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/2
execute if score #spread_z sab.var matches 3 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/3
execute if score #spread_z sab.var matches 4 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/4
execute if score #spread_z sab.var matches 5 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/5
execute if score #spread_z sab.var matches 6 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/6
execute if score #spread_z sab.var matches 7 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/7
execute if score #spread_z sab.var matches 8 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/8
execute if score #spread_z sab.var matches 9 at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/9
execute if score #spread_z sab.var matches 10.. at e-0-0-0-1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/z/10

#make sure Earl isn't stuck in the floor
execute at e-0-0-0-1 unless block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid run tp e-0-0-0-1 ~ ~1 ~
execute at e-0-0-0-1 unless block ~ ~ ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run tp e-0-0-0-1 ~ ~2 ~

#now read position (only valid if we're not stuck inside a solid block)
execute as e-0-0-0-1 at @s if block ~ ~ ~ #sa_bots:not_solid run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/get_waypoint_position

#put that thing back where it came from or so help me
tp e-0-0-0-1 0 0 0