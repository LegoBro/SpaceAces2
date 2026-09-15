#executed by bot entity

#function outputs:
# 1) relevant entities will have tag=sab.possibleTarget
# 2) #target_count -- total number of targets
# 3) #target_sustainer -- number of targets that are enemy sustainers
# 4) #lowest_percent_hp_teammate -- lowest hp teammate we can see


#look in a big area roughly corresponding to our field of view
tag @s add sab.self
execute if score @s sab.botSkill matches ..6 run tag @e[type=#projectile:has_hb,tag=hb,tag=entity,tag=!sab.self,tag=!standby_sticky_bomb,distance=..25] add sab.possibleTarget
execute if score @s sab.botSkill matches 7.. run tag @e[type=#projectile:has_hb,tag=hb,tag=entity,tag=!sab.self,distance=..25] add sab.possibleTarget
tag @s remove sab.self

#keep track of how many targets we find
scoreboard players set #target_count sab.var 0
scoreboard players set #target_count_sustainer sab.var 0

#keep track of the lowest % health teammate we find
scoreboard players set #lowest_percent_hp_teammate sab.var 100


#---------------------
#filter out targets based on various factors
scoreboard players operation #skill sab.var = @s sab.botSkill
scoreboard players operation #team sab.var = @s Team
execute store result score #shoot_teammates sab.var run execute if entity @s[tag=sab.botMayShootTeammates]
execute as @e[type=#projectile:has_hb,tag=sab.possibleTarget,distance=..25] run function sa_bots:bot/combat_logic/check_for_targets/filter_possible_targets
#---------------------