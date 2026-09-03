#executed by a player whenever they use trigger "bothPathEdit"


#if we used this trigger, we should also be given tag=sab.bothPathEdit
#(it will last until we leave Creative/Spectator mode)
execute unless entity @s[tag=sab.botPathEdit] run function sa_bots:editor/enter_editor


#everything is /trigger. boq would be proud
#-------------------------------------
#generic inputs
execute if score @s botPathEdit matches 1..99 at @s run function sa_bots:editor/input/1_100
#...

#remove connection with encoded index
execute if score @s botPathEdit matches 100000..199999 at @s run function sa_bots:editor/input/100000_remove_connection

#next event on connection with encoded index
execute if score @s botPathEdit matches 200000..299999 at @s run function sa_bots:editor/input/200000_next_event
#previous event on connection with encoded index
execute if score @s botPathEdit matches 300000..399999 at @s run function sa_bots:editor/input/300000_previous_event

#set endpoint of subroute
execute if score @s botPathEdit matches 400000..499999 at @s run function sa_bots:editor/input/400000_set_subroute_endpoint
#-------------------------------------


#clean up input
scoreboard players reset @s botPathEdit