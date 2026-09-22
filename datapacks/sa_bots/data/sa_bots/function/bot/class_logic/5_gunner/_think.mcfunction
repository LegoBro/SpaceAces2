#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone (don't have to be dead-on, just close)
execute if entity @s[scores={sab.lockedOntoEnemy=2..}] run scoreboard players set @s sab.botRightClick10Hz 1

#use photon rush while in combat
execute if entity @s[tag=input.forward,scores={sab.lockedOntoEnemy=1..,ability.1.cooldown=..0}] run function sa_bots:bot/class_logic/use_ability_1


#heal when low on health and NOT in combat
execute if entity @s[scores={health=..120,ability.2.cooldown=..0}] \
    unless score @s sab.botTargetEntityID matches 1.. if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ability_2


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.gunner.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate