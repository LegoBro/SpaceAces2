#executed by bot at 10Hz


#high skill: reload when not in combat
execute if entity @s[scores={reload=0,totalShots=..1,sab.botSkill=6..}] unless entity @s[scores={sab.botTargetEntityID=1..}] run scoreboard players set @s reload 1

#hold primary weapon by default
scoreboard players set @s SelectedItem 0
#when reloading, use abilities
#turret build
execute if entity @s[tag=!sab.botHasSpecificBuildSpot,tag=sab.botShootingActiveOpponent,scores={reload=1..,ability.2.cooldown=1..,ability.1.cooldown=..0,sab.hasTurret=0,sab.botLifetime=20..,sab.lockedOntoEnemy=1..}] run function sa_bots:bot/class_logic/use_ability_1
#projector
execute if entity @s[tag=sab.botShootingActiveOpponent,scores={reload=1..,ability.2.cooldown=..0,sab.botLifetime=20..}] run function sa_bots:bot/class_logic/use_ability_2

#if we have a specific turret spot in mind but we're in combat with less than 40% health, build turret preaturely in a panic
execute if entity @s[tag=sab.botHasSpecificBuildSpot,scores={ability.1.cooldown=..0,sab.hasTurret=0,sab.lockedOntoEnemy=1..,displayHealth=..40}] run function sa_bots:bot/class_logic/9_mechanic/forced_build

#demolish turret if we have a better spot in mind
execute if entity @s[tag=sab.botHasSpecificBuildSpot,scores={ability.1.cooldown=..0,sab.hasTurret=1..}] run function sa_bots:bot/class_logic/use_ability_1

#build turret if tagged to do so
execute if entity @s[tag=sab.botBuildNow] run function sa_bots:bot/class_logic/9_mechanic/forced_build


#shoot primary weapon when we see someone
execute if entity @s[scores={SelectedItem=0,sab.lockedOntoEnemy=2..}] run scoreboard players set @s sab.botRightClick10Hz 0

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee

#todo: drone logic



#put the correct item in our hands
execute unless score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -54 0 container.0
