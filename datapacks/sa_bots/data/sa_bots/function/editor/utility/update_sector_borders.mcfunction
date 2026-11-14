#executed by a bot waypoint Marker


#this gives us a more efficient way to select waypoints that border a specific sector

#clear tags
tag @s remove sab.sector_is_border
tag @s remove sab.sector_border.1
tag @s remove sab.sector_border.2
tag @s remove sab.sector_border.3
tag @s remove sab.sector_border.4
tag @s remove sab.sector_border.5
tag @s remove sab.sector_border.6
tag @s remove sab.sector_border.7
tag @s remove sab.sector_border.8
tag @s remove sab.sector_border.9
tag @s remove sab.sector_border.10
tag @s remove sab.sector_border.11
tag @s remove sab.sector_border.12
tag @s remove sab.sector_border.13
tag @s remove sab.sector_border.14
tag @s remove sab.sector_border.15
tag @s remove sab.sector_border.16
tag @s remove sab.sector_border.17
tag @s remove sab.sector_border.18
tag @s remove sab.sector_border.19
tag @s remove sab.sector_border.20
tag @s remove sab.sector_border.21
tag @s remove sab.sector_border.22
tag @s remove sab.sector_border.23
tag @s remove sab.sector_border.24

#iterate through the list
execute store result score #read2 sab.var run data get storage sa_bots:waypoint sector_neighbors[0]
execute unless score #read2 sab.var matches -1 run function sa_bots:editor/utility/update_sector_borders_iterate_list