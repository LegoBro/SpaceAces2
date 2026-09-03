#executed by a waypoint

scoreboard players set #distance_at_this_waypoint sab.var 2147483647
execute if score #use_channel sab.var matches 1 if score @s sab.navSectorCacheChannel1 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel1
execute if score #use_channel sab.var matches 2 if score @s sab.navSectorCacheChannel2 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel2
execute if score #use_channel sab.var matches 3 if score @s sab.navSectorCacheChannel3 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel3
execute if score #use_channel sab.var matches 4 if score @s sab.navSectorCacheChannel4 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel4
execute if score #use_channel sab.var matches 5 if score @s sab.navSectorCacheChannel5 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel5
execute if score #use_channel sab.var matches 6 if score @s sab.navSectorCacheChannel6 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel6
execute if score #use_channel sab.var matches 7 if score @s sab.navSectorCacheChannel7 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel7
execute if score #use_channel sab.var matches 8 if score @s sab.navSectorCacheChannel8 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel8
execute if score #use_channel sab.var matches 9 if score @s sab.navSectorCacheChannel9 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel9
execute if score #use_channel sab.var matches 10 if score @s sab.navSectorCacheChannel10 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel10
execute if score #use_channel sab.var matches 11 if score @s sab.navSectorCacheChannel11 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel11
execute if score #use_channel sab.var matches 12 if score @s sab.navSectorCacheChannel12 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel12
execute if score #use_channel sab.var matches 13 if score @s sab.navSectorCacheChannel13 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel13
execute if score #use_channel sab.var matches 14 if score @s sab.navSectorCacheChannel14 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel14
execute if score #use_channel sab.var matches 15 if score @s sab.navSectorCacheChannel15 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel15
execute if score #use_channel sab.var matches 16 if score @s sab.navSectorCacheChannel16 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel16
execute if score #use_channel sab.var matches 17 if score @s sab.navSectorCacheChannel17 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel17
execute if score #use_channel sab.var matches 18 if score @s sab.navSectorCacheChannel18 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel18
execute if score #use_channel sab.var matches 19 if score @s sab.navSectorCacheChannel19 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel19
execute if score #use_channel sab.var matches 20 if score @s sab.navSectorCacheChannel20 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint sab.var = @s sab.navSectorCacheChannel20

#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator] ["#distance_at_this_waypoint=",{score:{name:"#distance_at_this_waypoint",objective:"sab.var"},color:aqua}]