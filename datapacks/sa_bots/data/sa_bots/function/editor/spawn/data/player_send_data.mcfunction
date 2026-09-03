#executed by the player that just spawned a waypoint Marker

#auto assign sector?
scoreboard players set #auto_assign_sector sab.var 0
execute if score @s sab.autoAssignSector matches -2147483648..2147483647 run scoreboard players operation #auto_assign_sector sab.var = @s sab.autoAssignSector

#auto connect to last spawned waypoint?
execute if entity @s[tag=sab.autoConnectWaypoints] if score @s sab.waypointLastPlaced matches 1.. run function sa_bots:editor/spawn/data/try_auto_connect_waypoints

#auto spread?
execute if entity @s[tag=sab.autoSpreadWaypoints] as @e[limit=1,type=marker,tag=sab.setWpData,distance=..1] at @s run function sa_bots:editor/spawn/data/try_auto_spread

#remember what the last waypoint we spawned was
execute store result score @s sab.waypointLastPlaced run data get entity @e[limit=1,type=marker,tag=sab.setWpData,distance=..1] UUID[3]