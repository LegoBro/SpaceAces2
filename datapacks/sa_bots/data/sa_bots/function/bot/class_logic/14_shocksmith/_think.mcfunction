#executed by bot at 10Hz


#shocksmith will only aim at teammates if he has at least 1 shock grenade ready
tag @s remove sab.botMayShootTeammates
execute if score @s ability.1.cooldown matches 200.. run tag @s add sab.botMayShootTeammates


#hold primary weapon by default
scoreboard players set @s SelectedItem 0

#use stun on enemy
execute if entity @s[tag=!sab.botShootingFriendlyPlayer,tag=!sab.botWeaponHasDownwardArc,scores={sab.lockedOntoEnemy=3..,ability.2.cooldown=..0}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ability_2

#use grenade on enemy if we have grenades to spare
execute if entity @s[tag=!sab.botShootingFriendlyPlayer,scores={ability.1.cooldown=800..,ability.1.cooldown=1..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_prioritize_arc run function sa_bots:bot/class_logic/use_ability_1_if_aiming_for_arc


#throw grenade at teammate
execute if entity @s[tag=sab.botShootingFriendlyPlayer] run function sa_bots:bot/class_logic/use_ability_1_if_aiming_for_arc
#un-target teammate if we run out of grenades
execute if entity @s[tag=sab.botShootingFriendlyPlayer,scores={ability.1.cooldown=..180}] run function sa_bots:bot/combat_logic/look_at_target/forget_target


#shoot at enemy
#higher skill bot: just hold down right click regardless if our crosshair is placed correctly. primary weapon has no reload, so why not?
execute if entity @s[tag=!sab.botShootingFriendlyPlayer,scores={SelectedItem=0,sab.lockedOntoEnemy=3..,sab.botSkill=..4}] run function sa_bots:bot/class_logic/use_primary
execute if entity @s[tag=!sab.botShootingFriendlyPlayer,scores={SelectedItem=0,sab.lockedOntoEnemy=1..,sab.botSkill=5..}] run function sa_bots:bot/class_logic/use_primary


#use ultimate when charged and in combat
execute if score @s ultimate_charge >= class.shocksmith.ultimate.charge Numbers \
    if entity @s[tag=!sab.botShootingFriendlyPlayer,tag=!sab.botWeaponHasDownwardArc,scores={sab.lockedOntoEnemy=3..}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based run function sa_bots:bot/class_logic/use_ultimate


#set aim settings
tag @s remove sab.botWeaponSlowProjectile
tag @s remove sab.botWeaponHasDownwardArc
#grenade is a slow projectile with downward arc
tag @s[scores={SelectedItem=1}] add sab.botWeaponSlowProjectile
tag @s[scores={SelectedItem=1}] add sab.botWeaponHasDownwardArc
