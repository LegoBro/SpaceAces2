#executed by the waypoint that we want to select


#we exist
execute store result score #success sab.var run data get entity @s UUID[3]

#try to add sub-route endpoint if requested
scoreboard players set #success_defined_endpoint sab.var 0
execute if entity @s[tag=sab.botWaypointGeneric] if score #set_index sab.var matches 0.. run function sa_bots:editor/tools/edit/subroute/_try_finishing_subroute
execute if entity @s[tag=sab.botSubroute] run scoreboard players set #success_defined_endpoint sab.var -3
execute unless score #success_defined_endpoint sab.var matches -1..0 run scoreboard players reset @a[tag=sab.usedEditTool] sab.waypointLastEdited
execute unless score #success_defined_endpoint sab.var matches -1..0 run scoreboard players reset @a[tag=sab.usedEditTool] sab.defineConnectionEndIndex

#feedback
particle happy_villager ~ ~.25 ~ 0.25 0.25 0.25 0 10 force