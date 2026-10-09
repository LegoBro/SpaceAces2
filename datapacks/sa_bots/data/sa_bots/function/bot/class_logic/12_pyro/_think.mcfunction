#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when low on ammo and not in combat
execute if entity @s[scores={reload=0,totalShots=..15,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#high skill, use fire bomb when we see someone
execute if entity @s[scores={sab.botSkill=6..,ability.1.cooldown=..0,sab.lockedOntoEnemy=4..}] run function sa_bots:bot/class_logic/use_ability_1_if_aiming_for_arc
#lower skill, use fire bomb when reloading
execute if entity @s[scores={sab.botSkill=..5,reload=1..,ability.1.cooldown=..0,sab.lockedOntoEnemy=3..}] run function sa_bots:bot/class_logic/use_ability_1_if_aiming_for_arc


#might use adaptive plating when below 175HP
execute if entity @s[scores={health=..174,ability.2.cooldown=..0}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ability_2

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee



#use ultimate whenever enemies are nearby
execute if score @s ultimate_charge >= class.pyro.ultimate.charge Numbers \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely \
    if function sa_bots:bot/class_logic/check_if_enemies_nearby run function sa_bots:bot/class_logic/use_ultimate


#set aim settings
tag @s remove sab.botWeaponHasDownwardArc
tag @s remove sab.botWeaponHasUpwardArc
#grenade is a slow projectile with downward arc
tag @s[scores={SelectedItem=0}] add sab.botWeaponHasUpwardArc
tag @s[scores={SelectedItem=1}] add sab.botWeaponHasDownwardArc



#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -51 0 container.0
