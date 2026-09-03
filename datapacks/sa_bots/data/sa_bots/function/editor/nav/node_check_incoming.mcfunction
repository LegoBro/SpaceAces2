#executed by a bot waypoint


#we are going to check all of our incoming connections and see if this is a shorter route than previously thought

# psuedocode of what i'm trying to accomplish:
#
#   foreach (waypoint target in source.incoming_connections)
#       if (target.conditional == false && target.distance_to_sector < (source.distance_to_sector + source.distance_to_target)) {
#       {
#           target.distance_to_sector = source.distance_to_sector + source.distance_to_target
#           tag @s add sab.nav_calc_next_tick
#           update_tags()
#           update_global_counters()
#       }
#       else { do nothing }
#

#iterate through incoming connections
data modify storage sa_bots:waypoint i set value 0
scoreboard players set #i sab.var 1
execute store result storage sa_bots:waypoint iplus1 int 1 run scoreboard players get #i sab.var
execute if data entity @s data.incoming[0] run function sa_bots:editor/nav/node_check_incoming_iterate with storage sa_bots:waypoint


#clean up tags on self (unless another node just told us to calc again next tick)
execute unless score @s sab.navCalcNextTick matches 1 run tag @s remove sab.nav_calc_next_tick