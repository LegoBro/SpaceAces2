#valid if we find ourselves
execute if entity @s[distance=..1] run return run scoreboard players set #found_target sab.var 1
#=====

#keep going
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:not_solid run function sa_bots:bot/waypoint_nav/check_los_to_waypoint_recursive