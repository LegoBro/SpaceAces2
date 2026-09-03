#executed by a bot


scoreboard players remove @s sab.botWPSearchCooldown 1

#check for nearby waypoints
execute if score @s sab.botWPSearchCooldown matches ..0 \
    store result score @s sab.botWPSearchCooldown run function sa_bots:bot/waypoint_nav/seek_nearby_waypoint

#found target? switch to follow_waypoints mode
execute if data entity @s data.move_targets[0] run \
    return run scoreboard players set @s sab.botNavigationMode 1
#=====


#bumble around randomly
execute store result storage sa_bots:generic rotation int 1 run scoreboard players get @s sab.botMovementYaw
function sa_bots:bot/navigation_mode/0_roam/adjust_movement_rotation with storage sa_bots:generic

#summon move target to make us go forward
execute store result storage sa_bots:generic rotation int 1 run scoreboard players get @s sab.botMovementYaw
function sa_bots:bot/navigation_mode/0_roam/summon_move_target with storage sa_bots:generic
