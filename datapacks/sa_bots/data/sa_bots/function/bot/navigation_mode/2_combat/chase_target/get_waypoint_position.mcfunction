#executed by target entity
#executed at the position of the bot


#we did it
scoreboard players set #found_target sab.var 1

#now record our coordinates
data modify storage sa_bots:generic target.uuid4 set value "0"
data modify storage sa_bots:generic target.x set from entity @s Pos[0]
data modify storage sa_bots:generic target.y set from entity @s Pos[1]
data modify storage sa_bots:generic target.z set from entity @s Pos[2]

#this is an entity that can potentially move
data modify storage sa_bots:generic target.metadata.is_sub_route set value -1


#while we've got this entity as the execution context:
#check how far away we are, and if we have LOS
scoreboard players set #target_los_distance sab.var 1
scoreboard players set #target_los_valid sab.var 1
execute positioned ~ ~2 ~ facing entity @s eyes run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_los_length_to_target_recursive