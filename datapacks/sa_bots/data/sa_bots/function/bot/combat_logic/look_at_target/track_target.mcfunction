#executed by some entity that a bot is targeting
#executed at the position of the bot


#we exist if we ran this function
scoreboard players set #found_target sab.var 1

#count up time since we had a LOS
scoreboard players add @s sab.botTimeSinceLOS 2

#check if we have a valid LOS to self (only on every other go, for performance)
execute positioned ~ ~1.25 ~ facing entity @s eyes run function sa_bots:bot/combat_logic/check_for_targets/check_los_to_target

#we exist AND have a valid LOS
execute if entity @s[tag=sab.possibleTarget] run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target

#exit out if no line-of-sight was found
execute unless score #found_target sab.var matches 2.. \
    run return 0
#=====


#line-of-sight found!

#reset time since we've seen target
scoreboard players set @s sab.botTimeSinceLOS 0

#get target rot/yaw
scoreboard players operation @s sab.botTargetAngleYaw100 = #yaw_target sab.var
scoreboard players operation @s sab.botTargetAnglePitch100 = #pitch_target sab.var
scoreboard players operation @s sab.botTargetAnglePitch100 *= #-1 sab.var

#we are looking at a thing
scoreboard players set @s sab.botLookTime 50