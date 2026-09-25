#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..10,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#when reloading while in combat, use grenade
execute if entity @s[scores={sab.botSkill=6..,reload=1..,ability.2.cooldown=..0}] run function sa_bots:bot/class_logic/use_ability_2_if_aiming_for_arc
execute if entity @s[scores={sab.botSkill=..5,reload=1..,ability.2.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_prioritize_arc \
    run function sa_bots:bot/class_logic/use_ability_2_if_aiming_for_arc


#use ability 1 while fighting
#when reloading, use abilities
execute if entity @s[scores={ability.1.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_1

#shoot when we see someone
execute if entity @s[scores={SelectedItem=0,sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.mobility.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate


#set aim settings
tag @s remove sab.botWeaponSlowProjectile
tag @s remove sab.botWeaponHasDownwardArc
#grenade is a slow projectile with downward arc
tag @s[scores={SelectedItem=2}] add sab.botWeaponSlowProjectile
tag @s[scores={SelectedItem=2}] add sab.botWeaponHasDownwardArc