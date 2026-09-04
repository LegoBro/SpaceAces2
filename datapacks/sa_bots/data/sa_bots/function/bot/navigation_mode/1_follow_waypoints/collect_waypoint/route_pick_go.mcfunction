#executed by the chosen route marker


#look up the data of the target waypoint
scoreboard players operation #chosen_outgoing sab.var = @s sab.markIndex

#bot must execute whatever our event is
scoreboard players operation #chosen_event sab.var = @s sab.markEvent