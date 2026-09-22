#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..8,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#might put chem dispensers down when off cooldown
execute if entity @s[scores={ability.2.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_2

#will definitely put chem dispensers down when near teammates
execute if entity @s[scores={sab.botLifetime=60..,ability.2.cooldown=..0}] if function sa_bots:bot/class_logic/check_if_teammates_nearby \
    run function sa_bots:bot/class_logic/use_ability_2


#use chemical cascade when reloading and in combat
execute if entity @s[scores={reload=1..,sab.lockedOntoEnemy=2..,ability.1.cooldown=..0}] run function sa_bots:bot/class_logic/use_ability_1



#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.scientist.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=1..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate