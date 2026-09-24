#executed by bot entity
#executed at a possible location for a sub-target



#Earl, we need your help
tp e-0-0-0-1 ~ ~ ~


#check for valid path from bot's position -> sub-target
scoreboard players set #found_direct_path sab.var 0
scoreboard players set #recursions sab.var 100
execute at @s as e-0-0-0-1 facing entity @s feet rotated ~ 0 run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive
execute store result score #success sab.var run execute if score #found_direct_path sab.var matches 1..

#this position must be above solid ground or water, otherwise invalidate it
execute if block ~ ~ ~ #sa_bots:not_solid_exclude_water if block ~ ~-1 ~ #sa_bots:not_solid_exclude_water if block ~ ~-2 ~ #sa_bots:not_solid_exclude_water \
    run scoreboard players set #success sab.var 0

#if the first checks succeeded: check for valid path from sub-target -> target
scoreboard players set #found_direct_path sab.var 0
scoreboard players set #recursions sab.var 100
execute if score #success sab.var matches 1.. run function sa_bots:bot/waypoint_nav/sub_target/place_e_at_move_target with entity @s data.move_targets[0]
execute if score #success sab.var matches 2.. as e-0-0-0-1 facing entity @s feet rotated ~ 0 run function sa_bots:bot/waypoint_nav/sub_target/check_for_direct_path_to_waypoint_recursive
execute if score #found_direct_path sab.var matches 1.. run scoreboard players set #success sab.var 3

#success = 3? all checks passed. let's make a sub-target
execute if score #success sab.var matches 3.. run function sa_bots:bot/waypoint_nav/sub_target/create_sub_target

#ok, Earl can go home now
tp e-0-0-0-1 0 0 0