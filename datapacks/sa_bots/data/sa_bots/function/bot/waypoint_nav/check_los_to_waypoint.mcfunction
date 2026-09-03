#executed by a bot waypoint
#executed at the position of a bot

scoreboard players set #found_target sab.var 0

#max range of 80
scoreboard players set #recursions sab.var 80

#start checking from eyes of the bot
execute positioned ~ ~1.5 ~ facing entity @s feet positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:not_solid run function sa_bots:bot/waypoint_nav/check_los_to_waypoint_recursive