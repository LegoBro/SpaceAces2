#executed by a waypoint

scoreboard players set #distance_at_this_waypoint_uc sab.var 2147483647
execute if score #use_channel_uc sab.var matches 1 if score @s sab.navSectorCacheChannelUC1 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC1
execute if score #use_channel_uc sab.var matches 2 if score @s sab.navSectorCacheChannelUC2 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC2
execute if score #use_channel_uc sab.var matches 3 if score @s sab.navSectorCacheChannelUC3 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC3
execute if score #use_channel_uc sab.var matches 4 if score @s sab.navSectorCacheChannelUC4 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC4
execute if score #use_channel_uc sab.var matches 5 if score @s sab.navSectorCacheChannelUC5 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC5
execute if score #use_channel_uc sab.var matches 6 if score @s sab.navSectorCacheChannelUC6 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC6
execute if score #use_channel_uc sab.var matches 7 if score @s sab.navSectorCacheChannelUC7 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC7
execute if score #use_channel_uc sab.var matches 8 if score @s sab.navSectorCacheChannelUC8 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC8
execute if score #use_channel_uc sab.var matches 9 if score @s sab.navSectorCacheChannelUC9 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC9
execute if score #use_channel_uc sab.var matches 10 if score @s sab.navSectorCacheChannelUC10 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC10
execute if score #use_channel_uc sab.var matches 11 if score @s sab.navSectorCacheChannelUC11 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC11
execute if score #use_channel_uc sab.var matches 12 if score @s sab.navSectorCacheChannelUC12 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC12
execute if score #use_channel_uc sab.var matches 13 if score @s sab.navSectorCacheChannelUC13 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC13
execute if score #use_channel_uc sab.var matches 14 if score @s sab.navSectorCacheChannelUC14 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC14
execute if score #use_channel_uc sab.var matches 15 if score @s sab.navSectorCacheChannelUC15 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC15
execute if score #use_channel_uc sab.var matches 16 if score @s sab.navSectorCacheChannelUC16 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC16
execute if score #use_channel_uc sab.var matches 17 if score @s sab.navSectorCacheChannelUC17 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC17
execute if score #use_channel_uc sab.var matches 18 if score @s sab.navSectorCacheChannelUC18 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC18
execute if score #use_channel_uc sab.var matches 19 if score @s sab.navSectorCacheChannelUC19 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC19
execute if score #use_channel_uc sab.var matches 20 if score @s sab.navSectorCacheChannelUC20 matches -2147483648..2147483647 run scoreboard players operation #distance_at_this_waypoint_uc sab.var = @s sab.navSectorCacheChannelUC20

#debug, show route information
execute if score #debug_show_junction_decisions sab.var matches 1 run \
    tellraw @a[gamemode=spectator,distance=..3] ["#distance_at_this_waypoint_uc=",{score:{name:"#distance_at_this_waypoint_uc",objective:"sab.var"},color:aqua}]