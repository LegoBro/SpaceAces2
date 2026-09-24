#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..4,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#high skill, energy lance when we see someone
execute if entity @s[scores={sab.botSkill=6..,ability.1.cooldown=..0,sab.lockedOntoEnemy=4..}] run function sa_bots:bot/class_logic/use_ability_1
#lower skill, energy lance when reloading
execute if entity @s[scores={sab.botSkill=..5,reload=1..,ability.1.cooldown=..0,sab.lockedOntoEnemy=3..}] run function sa_bots:bot/class_logic/use_ability_1


#use rocket wall when reloading
execute if entity @s[scores={sab.botLifetime=50..,reload=1..,ability.2.cooldown=..0}] run function sa_bots:bot/class_logic/use_ability_2


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.rocketeer.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate