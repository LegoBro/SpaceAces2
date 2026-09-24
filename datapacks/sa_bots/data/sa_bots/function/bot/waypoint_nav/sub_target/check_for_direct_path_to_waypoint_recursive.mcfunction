#debug: show path trace
#particle dust{color:[0.25,1.0,0.25],scale:2f} ~ ~ ~ 0 0 0 0 1 force


#exit out if we find ourselves
execute positioned ~-.6 -100 ~-.6 if entity @s[dx=1.2,dy=500,dz=1.2] run \
    return run scoreboard players set #found_direct_path sab.var 1
#=====


#stop looking if out of recursions
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches ..0 run return fail
#=====

#try straight-forward path
execute positioned ^ ^ ^1 if block ~ ~.5 ~ #sa_bots:not_solid if block ~ ~1.5 ~ #sa_bots:not_solid run \
    return run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive

#try path that ascends 1 block
execute positioned ^ ^1 ^1 if block ~ ~.5 ~ #sa_bots:not_solid if block ~ ~1.5 ~ #sa_bots:not_solid run \
    return run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive

#go up climbable things
execute if block ~ ~.5 ~ #minecraft:climbable if block ~ ~1.5 ~ #sa_bots:not_solid if block ~ ~2.5 ~ #sa_bots:not_solid positioned ~ ~1 ~ run \
    return run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive

#try falling down
execute if block ~ ~ ~ #sa_bots:not_solid if block ~ ~-1 ~ #sa_bots:not_solid positioned ~ ~-1 ~ run \
    return run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive
