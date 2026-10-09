#executed by bot at 10Hz


#hold novapunch by default
scoreboard players set @s SelectedItem 0

#hold primary weapon
execute unless score @s reload matches 1.. run scoreboard players set @s SelectedItem 0

#use vis mine when opponent is close by
execute if entity @s[scores={ability.2.cooldown=..0,sab.lockedOntoEnemy=2..,sab.botTargetEntityDistance=..13}] \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_prioritize_arc \
    run function sa_bots:bot/class_logic/use_ability_2_if_aiming_for_arc

#melee when opponent is in range
execute if entity @s[scores={sab.lockedOntoEnemy=1..}] if function sa_bots:bot/class_logic/check_if_enemies_nearby_melee \
    if function sa_bots:bot/class_logic/random_chance_10hz_skill_based_more_likely run function sa_bots:bot/class_logic/use_melee

#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1


#------------------------------
#starpiercer logic

#clear previous input tags
tag @s remove input.right_click
tag @s remove input.jump

#clear previous attributes
execute unless entity @s[scores={sab.lockedOntoEnemy=1..,sab.botTargetEntityDistance=16..}] run attribute @s movement_speed modifier remove firing_slowdown

#if we're aiming at someone over 15 blocks away, use starpiercer
execute if entity @s[scores={sab.lockedOntoEnemy=1..,sab.botTargetEntityDistance=16..}] run function sa_bots:bot/class_logic/3_sniper/hold_starpiercer
#(ultimate logic is also in here...)
#------------------------------


#override behavior when doing a scripted action
execute if score @s sab.botScriptedAction matches 1.. run function sa_bots:bot/class_logic/3_sniper/scripted_actions


#set aim settings
tag @s remove sab.botWeaponSlowProjectile
tag @s remove sab.botWeaponHasDownwardArc
#vis mine is a slow projectile with downward arc
tag @s[scores={SelectedItem=2}] add sab.botWeaponSlowProjectile
tag @s[scores={SelectedItem=2}] add sab.botWeaponHasDownwardArc

#put the correct item in our hands
execute unless score @s SelectedItem matches 0..1 run item replace entity @s weapon.mainhand with air
execute if score @s SelectedItem matches 0 run item replace entity @s weapon.mainhand from block 15 -60 0 container.0
execute if score @s SelectedItem matches 1 run item replace entity @s weapon.mainhand from block 15 -60 0 container.1
