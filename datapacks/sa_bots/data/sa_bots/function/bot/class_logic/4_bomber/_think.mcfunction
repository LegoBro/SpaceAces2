#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#hold primary weapon
execute unless score @s reload matches 1.. run scoreboard players set @s SelectedItem 0
#when reloading, use smokescreen
execute if entity @s[tag=sab.botShootingActiveOpponent,scores={reload=1..,ability.2.cooldown=..0,sab.lockedOntoEnemy=2..}] run function sa_bots:bot/class_logic/use_ability_2

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..6,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1



#detonate stickies?
execute if entity @s[scores={reload=1..,ability.1.cooldown=1..}] unless score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/use_ability_1
#todo: add logic for shooting and monitoring sticky bombs

#shoot when we see someone
execute if entity @s[scores={SelectedItem=0,sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1


#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.bomber.ultimate.charge Numbers \
    if entity @s[tag=sab.botShootingActiveOpponent,scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/use_ultimate

#all weapons require leading shots and arcs
tag @s[scores={sab.botSkill=3..}] add sab.botWeaponHasDownwardArc
tag @s[scores={sab.botSkill=7..}] add sab.botShootAtFloor
tag @s add sab.botWeaponSlowProjectile


#override behavior when doing a scripted action
execute if score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/4_bomber/scripted_actions

#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -59 0 container.0
