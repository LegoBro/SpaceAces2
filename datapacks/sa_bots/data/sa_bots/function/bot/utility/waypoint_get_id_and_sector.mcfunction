#executed by a bot waypoint


#store destination data in storage so it can be copied into a bot's data.destinations[] list

#id/sector
data modify storage sa_bots:generic get_waypoint.id set from entity @s UUID[3]
data modify storage sa_bots:generic get_waypoint.uuid4 set from entity @s data.uuid4
data modify storage sa_bots:generic get_waypoint.sector set from entity @s data.sector

#-------------------------
#destinations can have an attached "action" that will be executed if/when we reach the destination
#(must set "#destination_action sab.var" before calling this)
# 0 = nothing
# 1 = build turret
# 2 = take a sub-route assuming it will lead to a turret spot
# 3 = hold near point (sniper)
# 4 = take subroute to reach sniper spot
# 5 = hold near point (explosive class)
# 6 = take subroute to reach explosive vantage point
# 7 = stand on control point

#if a mechanic wants to build a turret, but this is merely a "wp.leadsToTurretSpot", have them take a sub-route
execute if score #destination_action sab.var matches 1 if entity @s[tag=wp.leadsToTurretSpot] run scoreboard players set #destination_action sab.var 2
execute if score #destination_action sab.var matches 1 if score #team sab.var matches 1 if entity @s[tag=wp.leadsToTurretSpot.blue] run scoreboard players set #destination_action sab.var 2
execute if score #destination_action sab.var matches 1 if score #team sab.var matches 2 if entity @s[tag=wp.leadsToTurretSpot.red] run scoreboard players set #destination_action sab.var 2

#if a sniper wants to go to a sniper spot, but this is merely a "wp.leadsToSniperSpot", have them take a sub-route
execute if score #destination_action sab.var matches 3 if entity @s[tag=wp.leadsToSniperSpot] run scoreboard players set #destination_action sab.var 4
execute if score #destination_action sab.var matches 3 if score #team sab.var matches 1 if entity @s[tag=wp.leadsToSniperSpot.blue] run scoreboard players set #destination_action sab.var 4
execute if score #destination_action sab.var matches 3 if score #team sab.var matches 2 if entity @s[tag=wp.leadsToSniperSpot.red] run scoreboard players set #destination_action sab.var 4

#if a we want to go to a vantage point for an explosive class, but this is merely a "wp.leadsToExplosiveVantagePoint", have them take a sub-route
execute if score #destination_action sab.var matches 5 if entity @s[tag=wp.leadsToExplosiveVantagePoint] run scoreboard players set #destination_action sab.var 6

#apply destination action
execute store result storage sa_bots:generic get_waypoint.action int 1 run scoreboard players get #destination_action sab.var
scoreboard players set #destination_action sab.var 0
#-------------------------

#we did it
scoreboard players set #found_destination sab.var 1