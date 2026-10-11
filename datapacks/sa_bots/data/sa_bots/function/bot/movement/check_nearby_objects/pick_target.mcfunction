#executed by some object that a bot wants to path to


#health path is a sub-target
execute if entity @s[tag=health_pack] run scoreboard players set #found_target sab.var 1
#chem_dispenser should be stood near
execute if entity @s[tag=chem_dispenser] run scoreboard players set #found_target sab.var 2


#record our coordinates
data modify storage sa_bots:generic target.id set value 0
data modify storage sa_bots:generic target.uuid4 set value "0"
data modify storage sa_bots:generic target.x set from entity @s Pos[0]
data modify storage sa_bots:generic target.y set from entity @s Pos[1]
data modify storage sa_bots:generic target.z set from entity @s Pos[2]

#this is a sub-target
data modify storage sa_bots:generic target.metadata.is_sub_route set value 1
#"is_sub_route"=2 if we want to stand near the thing for a while
execute if score #found_target sab.var matches 2 run data modify storage sa_bots:generic target.metadata.is_sub_route set value 2