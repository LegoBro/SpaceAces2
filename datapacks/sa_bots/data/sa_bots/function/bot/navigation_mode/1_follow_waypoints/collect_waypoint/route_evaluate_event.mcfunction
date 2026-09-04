#executed by a marker representing one of the possible routes


#assume invalid until proven valid
scoreboard players set #valid_event sab.var 0

#our bot will look up what the event is and check the condition
scoreboard players operation #event sab.var = @s sab.markEvent
execute as @e[type=mannequin,tag=sab.self,distance=..1] run function sa_bots:bot/navigation_mode/1_follow_waypoints/event/_event_check_possible_index

#valid?
execute if score #valid_event sab.var matches 1 run return 1

#not valid?
return 0