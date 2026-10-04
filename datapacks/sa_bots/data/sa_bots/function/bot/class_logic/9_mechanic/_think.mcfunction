#executed by bot at 10Hz


#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 0

#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..1,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1

#hold primary weapon by default
scoreboard players set @s SelectedItem 0
#when reloading, use abilities
execute if entity @s[scores={reload=1..,ability.2.cooldown=1..,ability.1.cooldown=..0,sab.hasTurret=0}] run scoreboard players set @s SelectedItem 1
execute if entity @s[scores={reload=1..,ability.2.cooldown=..0}] run scoreboard players set @s SelectedItem 2

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_melee

#todo: drone logic



#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -54 0 container.0
