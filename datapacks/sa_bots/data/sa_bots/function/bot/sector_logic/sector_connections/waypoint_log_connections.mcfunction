#executed by a bot waypoint that is tagged with "sab.sector_is_border"

#must have a sector!
execute unless data entity @s data.sector run return fail
#=====

#for every outside sector we connect to, add it to the table
data modify storage sa_bots:generic sector set from entity @s data.sector
execute if entity @s[tag=sab.sector_border.1] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/1 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.2] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/2 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.3] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/3 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.4] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/4 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.5] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/5 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.6] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/6 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.7] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/7 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.8] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/8 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.9] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/9 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.10] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/10 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.11] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/11 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.12] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/12 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.13] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/13 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.14] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/14 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.15] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/15 with storage sa_bots:generic
execute if entity @s[tag=sab.sector_border.16] run function sa_bots:bot/sector_logic/sector_connections/log_connection_macro/16 with storage sa_bots:generic