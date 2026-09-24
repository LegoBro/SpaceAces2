#executed by a waypoint marker OR e-0-0-0-1, depending if we did a spread or not


#we did it
scoreboard players set #found_target sab.var 1

#now record our coordinates
#(uuid4 is handled in another function to avoid execution context problems)
data modify storage sa_bots:generic target.x set from entity @s Pos[0]
data modify storage sa_bots:generic target.y set from entity @s Pos[1]
data modify storage sa_bots:generic target.z set from entity @s Pos[2]

#this is not a sub-target
data modify storage sa_bots:generic target.metadata.is_sub_route set value 0