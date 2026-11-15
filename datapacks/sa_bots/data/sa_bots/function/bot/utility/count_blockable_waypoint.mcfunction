#executed by a bot waypoint (can be a red waypoint or a sub-route waypoint)
#executed at the position of the waypoint


#always count self
scoreboard players add #count_blockable sab.var 1

#count if our path is open
execute if block ~ ~ ~ #sa_bots:not_solid run scoreboard players add #count_blockable_valid sab.var 1
