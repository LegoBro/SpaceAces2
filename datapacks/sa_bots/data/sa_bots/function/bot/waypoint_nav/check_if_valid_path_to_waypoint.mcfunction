#executed by a bot waypoint
#executed at the position of a bot


#some other waypoint was already found? don't bother
execute if score #found_target sab.var matches 1 run return 0
#=====

#max range of 40
scoreboard players set #recursions sab.var 40

#start checking from eyes of the bot
execute positioned ~ ~1.5 ~ facing entity @s feet positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:not_solid run function sa_bots:bot/waypoint_nav/check_if_valid_path_to_waypoint_recursive