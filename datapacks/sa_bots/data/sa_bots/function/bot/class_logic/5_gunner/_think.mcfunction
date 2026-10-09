#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone (don't have to be dead-on, just close)
execute if entity @s[scores={sab.lockedOntoEnemy=2..}] run scoreboard players set @s sab.botRightClick10Hz 2

#use photon rush while in combat and near target
execute if entity @s[tag=input.forward,scores={sab.lockedOntoEnemy=1..,ability.1.cooldown=..0,sab.botTargetEntityDistance=..10}] run function sa_bots:bot/class_logic/use_ability_1


#heal when low on health and NOT in combat
execute if entity @s[scores={health=..120,ability.2.cooldown=..0}] \
    unless score @s sab.botTargetEntityID matches 1.. if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ability_2

#while shooting and holding primary weapon: move at 50% speed
execute if entity @s[scores={SelectedItem=0,sab.botRightClick10Hz=1..}] run attribute @s movement_speed modifier add firing_slowdown -0.5 add_multiplied_total
execute unless entity @s[scores={SelectedItem=0,sab.botRightClick10Hz=1..}] run attribute @s movement_speed modifier remove firing_slowdown

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.gunner.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/use_ultimate


#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -58 0 container.0
