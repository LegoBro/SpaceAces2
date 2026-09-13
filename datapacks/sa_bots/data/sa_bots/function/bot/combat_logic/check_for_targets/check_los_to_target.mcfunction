#range of 150 blocks
scoreboard players set #recursions sab.var 150

#possible target tag is revoked until we find LOS to ourself
tag @s remove sab.possibleTarget

#start raycast
execute positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:bot_sees_through run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target_recursive