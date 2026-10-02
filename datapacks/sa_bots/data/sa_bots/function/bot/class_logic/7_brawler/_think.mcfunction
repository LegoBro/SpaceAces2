#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#swing sword when someone is in melee range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    run function sa_bots:bot/class_logic/use_primary

#use phasmatic sphere when looking at an enemy
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.2.cooldown=..0}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_2

#leap at enemy when locked on (must be within 40m)
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.1.cooldown=..0,sab.botTargetEntityDistance=..40}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    if block ~ ~2 ~ #sa_bots:not_solid if block ~ ~3 ~ #sa_bots:not_solid if block ~ ~4 ~ #sa_bots:not_solid if block ~ ~5 ~ #sa_bots:not_solid \
    run function sa_bots:bot/class_logic/use_ability_1
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.1.cooldown=..0,sab.botTargetEntityDistance=..6}] if function sa_bots:bot/class_logic/random_chance_10hz_skill_based \
    run function sa_bots:bot/class_logic/use_ability_1


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.brawler.ultimate.charge Numbers \
    if entity @s[scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_less_likely run function sa_bots:bot/class_logic/use_ultimate


#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -56 0 container.0
