#executed by an entity that a bot want to shoot at


#are we something that can shoot? report that
execute store result score #enemy_shoots_back sab.var run execute if entity @s[tag=sab.possibleTargetCanShoot]

#assign a target id if we don't already have one
#(this is purely for linking the bot and its target)
execute unless score @s sab.entityTargetingID matches 1.. run function sa_bots:bot/combat_logic/check_for_targets/assign_new_target_id

#return whatever our target entity ID is
return run scoreboard players get @s sab.entityTargetingID