#executed by bot at 10Hz


#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#hold primary weapon
execute unless score @s reload matches 1.. run scoreboard players set @s SelectedItem 0
#when reloading, use dodge
execute if score @s reload matches 1.. if score @s ability.1.cooldown matches ..0 run scoreboard players set @s SelectedItem 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..6,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1

#todo: utilize double jump and melee movement



#use ultimate whenever ready
execute if score @s ultimate_charge >= class.scout.ultimate.charge Numbers \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate
