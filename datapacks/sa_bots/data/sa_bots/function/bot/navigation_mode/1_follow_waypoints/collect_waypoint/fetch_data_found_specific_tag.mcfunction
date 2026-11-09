#executed by waypoint that a bot is collecting


#add 100000 to global var so the bot can interpret this, later
scoreboard players add #look_for_waypoint_tag sab.var 100000

#save reference to this waypoint. we might want to use it as a pivot point
data modify storage sa_bots:generic remember_uuid4 set from entity @s data.uuid4