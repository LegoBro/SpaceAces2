#executed by an entity that a bot want to shoot at


#are we something that can shoot? report that
execute store result score #enemy_shoots_back sab.var run execute if entity @s[tag=sab.possibleTargetCanShoot]
#are we a teammate? report that
execute store result score #target_is_teammate sab.var run execute if score @s Team = #team sab.var

#record our uuid
execute store result score #get_uuid4_0 sab.var run data get entity @s UUID[0]
execute store result score #get_uuid4_1 sab.var run data get entity @s UUID[1]
execute store result score #get_uuid4_2 sab.var run data get entity @s UUID[2]
execute store result score #get_uuid4_3 sab.var run data get entity @s UUID[3]

#return whatever our target entity ID is
return run scoreboard players get @s id