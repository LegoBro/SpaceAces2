#executed by bot at 10Hz


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#shoot when we see someone, hold fire while using cloak
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] unless score @s invis matches 1.. run scoreboard players set @s sab.botRightClick10Hz 1

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..5,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1


#use swift shade when enemies are in front of us
execute if score @s ability.2.cooldown matches ..0 positioned ^ ^ ^3 if function sa_bots:bot/class_logic/check_if_enemies_nearby_close run function sa_bots:bot/class_logic/use_ability_2


#use void needles when in combat
execute if entity @s[scores={sab.lockedOntoEnemy=3..,ability.1.cooldown=..0}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ability_1



#use ultimate when enemies are close and we're targeting someone
execute if score @s ultimate_charge >= class.seeker.ultimate.charge Numbers \
    if score @s sab.lockedOntoEnemy matches 1.. \
    if function sa_bots:bot/class_logic/check_if_enemies_nearby_close run function sa_bots:bot/class_logic/use_ultimate
