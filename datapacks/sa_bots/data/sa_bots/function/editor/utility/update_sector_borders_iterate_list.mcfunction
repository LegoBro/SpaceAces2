#executed by a bot waypoint Marker


# #read2 sab.var is the thing we just read

#we are a border if we have at least 1 neighboring sector
tag @s add sab.sector_is_border

#add tag based on what the entry was
execute if score #read2 sab.var matches 1 run tag @s add sab.sector_border.1
execute if score #read2 sab.var matches 2 run tag @s add sab.sector_border.2
execute if score #read2 sab.var matches 3 run tag @s add sab.sector_border.3
execute if score #read2 sab.var matches 4 run tag @s add sab.sector_border.4
execute if score #read2 sab.var matches 5 run tag @s add sab.sector_border.5
execute if score #read2 sab.var matches 6 run tag @s add sab.sector_border.6
execute if score #read2 sab.var matches 7 run tag @s add sab.sector_border.7
execute if score #read2 sab.var matches 8 run tag @s add sab.sector_border.8
execute if score #read2 sab.var matches 9 run tag @s add sab.sector_border.9
execute if score #read2 sab.var matches 10 run tag @s add sab.sector_border.10
execute if score #read2 sab.var matches 11 run tag @s add sab.sector_border.11
execute if score #read2 sab.var matches 12 run tag @s add sab.sector_border.12
execute if score #read2 sab.var matches 13 run tag @s add sab.sector_border.13
execute if score #read2 sab.var matches 14 run tag @s add sab.sector_border.14
execute if score #read2 sab.var matches 15 run tag @s add sab.sector_border.15
execute if score #read2 sab.var matches 16 run tag @s add sab.sector_border.16
execute if score #read2 sab.var matches 17 run tag @s add sab.sector_border.17
execute if score #read2 sab.var matches 18 run tag @s add sab.sector_border.18
execute if score #read2 sab.var matches 19 run tag @s add sab.sector_border.19
execute if score #read2 sab.var matches 20 run tag @s add sab.sector_border.20
execute if score #read2 sab.var matches 21 run tag @s add sab.sector_border.21
execute if score #read2 sab.var matches 22 run tag @s add sab.sector_border.22
execute if score #read2 sab.var matches 23 run tag @s add sab.sector_border.23
execute if score #read2 sab.var matches 24 run tag @s add sab.sector_border.24

#now remove that first entry in list
data remove storage sa_bots:waypoint sector_neighbors[0]

#now read whatever the new first entry is and iterate further
execute store result score #read2 sab.var run data get storage sa_bots:waypoint sector_neighbors[0]
execute unless score #read2 sab.var matches -1 run function sa_bots:editor/utility/update_sector_borders_iterate_list