#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..6,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1

#use cloak when enemies are in front of us
execute if score @s ability.1.cooldown matches ..0 positioned ^ ^ ^8 if function sa_bots:bot/class_logic/check_if_enemies_nearby run function sa_bots:bot/class_logic/use_ability_1


#when reloading while in combat, use fused detonator
execute if entity @s[scores={sab.lockedOntoEnemy=3..,reload=1..,ability.2.cooldown=..0}] run function sa_bots:bot/class_logic/use_ability_2



#use ultimate whenever ready
execute if score @s ultimate_charge >= class.infiltraitor.ultimate.charge Numbers \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate
