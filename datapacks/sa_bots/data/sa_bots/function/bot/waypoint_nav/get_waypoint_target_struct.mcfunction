#executed by a waypoint that just successfully found a line of sight to itself


#we did it
scoreboard players set #found_target sab.var 1

#now record our coordinates
data modify storage sa_bots:generic target.uuid4 set from entity @s data.uuid4
data modify storage sa_bots:generic target.x set from entity @s Pos[0]
data modify storage sa_bots:generic target.y set from entity @s Pos[1]
data modify storage sa_bots:generic target.z set from entity @s Pos[2]