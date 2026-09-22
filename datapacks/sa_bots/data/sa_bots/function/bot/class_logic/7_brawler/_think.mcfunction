#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#swing sword when someone is in melee range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    run function sa_bots:bot/class_logic/use_primary

#use phasmatic sphere when looking at an enemy
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.2.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_2

#leap at enemy when locked on
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.1.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_1


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.brawler.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate