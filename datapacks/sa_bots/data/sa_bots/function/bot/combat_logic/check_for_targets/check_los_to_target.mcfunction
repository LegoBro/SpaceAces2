#keep track of how far this ray goes
scoreboard players set #los_distance sab.var 1

#possible target tag is revoked until we find LOS to ourself
tag @s remove sab.possibleTarget

#start raycast
execute positioned ^ ^ ^1 run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target_recursive