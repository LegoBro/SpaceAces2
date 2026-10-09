#executed by bot at 10Hz


#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..19,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#use angry medic when reloading and enemies are nearby
execute if entity @s[scores={reload=1..,ability.1.cooldown=..0}] \
    if function sa_bots:bot/class_logic/check_if_enemies_nearby run function sa_bots:bot/class_logic/use_ability_1

#use wrist rocket while shooting at enemy
execute if entity @s[tag=!sab.botShootingFriendlyPlayer,scores={sab.lockedOntoEnemy=3..,ability.2.cooldown=..0}] \
    run function sa_bots:bot/class_logic/use_ability_2

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee


#teams: use ultimate when teammates are nearby
execute if score @s Team matches 1..2 if score @s ultimate_charge >= class.healer.ultimate.charge Numbers \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely \
    if function sa_bots:bot/class_logic/check_if_teammates_nearby run function sa_bots:bot/class_logic/use_ultimate
#ffa: use when ready
execute unless score @s Team matches 1..2 if score @s ultimate_charge >= class.healer.ultimate.charge Numbers \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/use_ultimate


#override behavior when doing a scripted action
execute if score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/6_healer/scripted_actions

#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -57 0 container.0
