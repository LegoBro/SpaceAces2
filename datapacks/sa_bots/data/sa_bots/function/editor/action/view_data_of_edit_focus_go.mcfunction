#executed by edit focused waypoint


#get data
data modify storage sa_bots:waypoint_info text_dump set from entity @s

#we exist
scoreboard players set #success sab.var 1