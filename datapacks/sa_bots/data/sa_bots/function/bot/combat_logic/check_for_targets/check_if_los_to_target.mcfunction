#executed by a potential target
#executed at the position of a bot positioned ~ ~1 ~ facing target

#return 1 if we have a LOS


#keep track of how far this ray goes
scoreboard players set #los_distance sab.var 1

#possible target tag is revoked until we find LOS to ourself
tag @s remove sab.possibleTarget

#start raycast
execute facing entity @s eyes positioned ^ ^ ^1 run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target_recursive

#do we have a LOS? return 1
execute if entity @s[tag=sab.possibleTarget] run return 1
execute if entity @s[tag=sab.possibleTargetSeeOnly] run return 1
#=====

#otherwise no
return fail