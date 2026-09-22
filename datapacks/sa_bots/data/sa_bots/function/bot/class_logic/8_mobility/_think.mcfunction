#executed by bot at 10Hz


#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..10,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1

#hold primary weapon
execute unless score @s reload matches 1.. run scoreboard players set @s SelectedItem 0
#when reloading, use abilities
execute if score @s reload matches 1.. if score @s ability.1.cooldown matches ..0 run scoreboard players set @s SelectedItem 1
execute if score @s reload matches 1.. if score @s ability.1.cooldown matches 1.. run scoreboard players set @s SelectedItem 2


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.mobility.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate