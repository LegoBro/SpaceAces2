#executed by a waypoint that just successfully found a line of sight to itself


#is there a spread bias definied? use it, then erase it
execute if score #spread_bias_x sab.var matches -2147483648..2147483647 at @s if loaded ~ ~ ~ run \
    return run function sa_bots:bot/navigation_mode/1_follow_waypoints/spread/get_waypoint_target_struct_with_spread
#=====


#not using spread: just grab the coordinates of this waypoint

#we did it
scoreboard players set #found_target sab.var 1

#now record our coordinates
data modify storage sa_bots:generic target.uuid4 set from entity @s data.uuid4
data modify storage sa_bots:generic target.x set from entity @s Pos[0]
data modify storage sa_bots:generic target.y set from entity @s Pos[1]
data modify storage sa_bots:generic target.z set from entity @s Pos[2]

#this is not a sub-target
data modify storage sa_bots:generic target.metadata.is_sub_route set value 0