#executed by the player that damaged our bot


#must be somewhat nearby
execute unless entity @s[distance=..30] run return fail
#=====


#make sure we have a unique targeting ID
execute unless score @s sab.entityTargetingID matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/assign_new_target_id

#record our uuid
execute store result score #get_uuid4_0 sab.var run data get entity @s UUID[0]
execute store result score #get_uuid4_1 sab.var run data get entity @s UUID[1]
execute store result score #get_uuid4_2 sab.var run data get entity @s UUID[2]
execute store result score #get_uuid4_3 sab.var run data get entity @s UUID[3]

#record targeting id
scoreboard players operation #get_id sab.var = @s sab.entityTargetingID