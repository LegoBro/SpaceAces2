#executed by a waypoint

scoreboard players set #distance_at_this_waypoint sab.var 2147483647
execute if score #goal_sector sab.var matches 1 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[1][0]
execute if score #goal_sector sab.var matches 2 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[2][0]
execute if score #goal_sector sab.var matches 3 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[3][0]
execute if score #goal_sector sab.var matches 4 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[4][0]
execute if score #goal_sector sab.var matches 5 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[5][0]
execute if score #goal_sector sab.var matches 6 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[6][0]
execute if score #goal_sector sab.var matches 7 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[7][0]
execute if score #goal_sector sab.var matches 8 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[8][0]
execute if score #goal_sector sab.var matches 9 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[9][0]
execute if score #goal_sector sab.var matches 10 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[10][0]
execute if score #goal_sector sab.var matches 11 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[11][0]
execute if score #goal_sector sab.var matches 12 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[12][0]
execute if score #goal_sector sab.var matches 13 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[13][0]
execute if score #goal_sector sab.var matches 14 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[14][0]
execute if score #goal_sector sab.var matches 15 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[15][0]
execute if score #goal_sector sab.var matches 16 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[16][0]
execute if score #goal_sector sab.var matches 17 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[17][0]
execute if score #goal_sector sab.var matches 18 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[18][0]
execute if score #goal_sector sab.var matches 19 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[19][0]
execute if score #goal_sector sab.var matches 20 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[20][0]
execute if score #goal_sector sab.var matches 21 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[21][0]
execute if score #goal_sector sab.var matches 22 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[22][0]
execute if score #goal_sector sab.var matches 23 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[23][0]
execute if score #goal_sector sab.var matches 24 store result score #distance_at_this_waypoint sab.var run data get entity @s data.distanceToSector[24][0]

#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator,distance=..3] ["#distance_at_this_waypoint=",{score:{name:"#distance_at_this_waypoint",objective:"sab.var"},color:gold}]