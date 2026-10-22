#executed by bot


#line-of-sight found!

#reset time since we've seen target
scoreboard players set @s sab.botTimeSinceLOS 0
scoreboard players set @s sab.botTimeSinceCombat 0

#get target rot/yaw
scoreboard players operation @s sab.botTargetAngleYaw100 = #yaw_target sab.var
scoreboard players operation @s sab.botTargetAnglePitch100 = #pitch_target sab.var

#remember how far away the target is
scoreboard players operation @s sab.botTargetEntityDistance = #los_distance sab.var

#remember what the target's position was
execute if score #observe_player sab.var matches 1.. run scoreboard players operation @s sab.botObserveTargetX = #observe_x sab.var
execute if score #observe_player sab.var matches 1.. run scoreboard players operation @s sab.botObserveTargetZ = #observe_z sab.var

#we are looking at a thing
scoreboard players set @s sab.botLookTime 30

#when we make first LOS contact after not being able to see the enemy:
#we might move towards the target depending on how confident we are
execute unless score @s sab.botLookMode matches 2..3 unless score @s sab.botTask matches 2 \
    if score #found_target sab.var matches 2 if score #target_is_teammate sab.var matches 0 run \
    function sa_bots:bot/combat_logic/pursuit/consider_chasing_enemy_can_shoot
execute unless score @s sab.botLookMode matches 2..3 unless score @s sab.botTask matches 2 \
    if score #found_target sab.var matches 3 if score #target_is_teammate sab.var matches 0 run \
    function sa_bots:bot/combat_logic/pursuit/consider_chasing_enemy_cannot_shoot

#remember what "look" mode we're in
# 1 = targeting, no line-of-sight
# 2 = targeting, looking toward enemy and ready to shoot
# 3 = targeting, glance only
scoreboard players operation @s sab.botLookMode = #found_target sab.var

#consider chasing the target down directly
execute if entity @s[tag=sab.botWantsToGetInMeleeRange,scores={sab.botConfidence=3..,sab.botLookMode=2}] \
    if score #target_is_teammate sab.var matches 1 run function sa_bots:bot/navigation_mode/2_combat/consider_chasing_target

#run away from enemy if we don't want people up close to us
execute if entity @s[tag=sab.botWantsToAvoidEnemy,scores={sab.botLookMode=1..2,sab.botConfidence=..9,sab.botTargetEntityDistance=..10}] \
    if score #target_is_teammate sab.var matches 0 unless score @s sab.botTask matches 18..19 run function sa_bots:bot/navigation_mode/2_combat/avoid_target

#set cooldown for "glancing"
execute if score @s sab.botLookMode matches 3 store result score @s sab.botGlanceTime run random value 70..100