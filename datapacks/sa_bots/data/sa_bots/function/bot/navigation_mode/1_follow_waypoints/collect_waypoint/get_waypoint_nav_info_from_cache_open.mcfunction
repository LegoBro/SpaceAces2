#executed by a waypoint

scoreboard players set #distance_at_this_waypoint_open sab.var 2147483647
execute if score #use_channel_open sab.var matches 1 if score @s sab.navSectorCacheChannelOpen1 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen1
execute if score #use_channel_open sab.var matches 2 if score @s sab.navSectorCacheChannelOpen2 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen2
execute if score #use_channel_open sab.var matches 3 if score @s sab.navSectorCacheChannelOpen3 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen3
execute if score #use_channel_open sab.var matches 4 if score @s sab.navSectorCacheChannelOpen4 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen4
execute if score #use_channel_open sab.var matches 5 if score @s sab.navSectorCacheChannelOpen5 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen5
execute if score #use_channel_open sab.var matches 6 if score @s sab.navSectorCacheChannelOpen6 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen6
execute if score #use_channel_open sab.var matches 7 if score @s sab.navSectorCacheChannelOpen7 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen7
execute if score #use_channel_open sab.var matches 8 if score @s sab.navSectorCacheChannelOpen8 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen8
execute if score #use_channel_open sab.var matches 9 if score @s sab.navSectorCacheChannelOpen9 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen9
execute if score #use_channel_open sab.var matches 10 if score @s sab.navSectorCacheChannelOpen10 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen10
execute if score #use_channel_open sab.var matches 11 if score @s sab.navSectorCacheChannelOpen11 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen11
execute if score #use_channel_open sab.var matches 12 if score @s sab.navSectorCacheChannelOpen12 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen12
execute if score #use_channel_open sab.var matches 13 if score @s sab.navSectorCacheChannelOpen13 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen13
execute if score #use_channel_open sab.var matches 14 if score @s sab.navSectorCacheChannelOpen14 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen14
execute if score #use_channel_open sab.var matches 15 if score @s sab.navSectorCacheChannelOpen15 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen15
execute if score #use_channel_open sab.var matches 16 if score @s sab.navSectorCacheChannelOpen16 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen16
execute if score #use_channel_open sab.var matches 17 if score @s sab.navSectorCacheChannelOpen17 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen17
execute if score #use_channel_open sab.var matches 18 if score @s sab.navSectorCacheChannelOpen18 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen18
execute if score #use_channel_open sab.var matches 19 if score @s sab.navSectorCacheChannelOpen19 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen19
execute if score #use_channel_open sab.var matches 20 if score @s sab.navSectorCacheChannelOpen20 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_open sab.var = @s sab.navSectorCacheChannelOpen20

#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator,distance=..3] ["#distance_at_this_waypoint_open=",{score:{name:"#distance_at_this_waypoint_open",objective:"sab.var"},color:aqua}]