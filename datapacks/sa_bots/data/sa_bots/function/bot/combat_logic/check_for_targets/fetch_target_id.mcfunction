#executed by an entity that a bot want to shoot at


#are we something that can shoot? report that
execute store result score #enemy_shoots_back sab.var run execute if entity @s[tag=sab.possibleTargetCanShoot]

#assign a target id if we don't already have one
#(this is purely for linking the bot and its target)
execute unless score @s sab.entityTargetingID matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/assign_new_target_id

#record our uuid
execute store result score #get_uuid4_0 sab.var run data get entity @s UUID[0]
execute store result score #get_uuid4_1 sab.var run data get entity @s UUID[1]
execute store result score #get_uuid4_2 sab.var run data get entity @s UUID[2]
execute store result score #get_uuid4_3 sab.var run data get entity @s UUID[3]

#return whatever our target entity ID is
return run scoreboard players get @s sab.entityTargetingID