#line-of-sight found!

#reset time since we've seen target
scoreboard players set @s sab.botTimeSinceLOS 0

#get target rot/yaw
scoreboard players operation @s sab.botTargetAngleYaw100 = #yaw_target sab.var
scoreboard players operation @s sab.botTargetAnglePitch100 = #pitch_target sab.var

#remember what the target's position was
execute if score #observe_player sab.var matches 1.. run scoreboard players operation @s sab.botObserveTargetX = #observe_x sab.var
execute if score #observe_player sab.var matches 1.. run scoreboard players operation @s sab.botObserveTargetZ = #observe_z sab.var

#we are looking at a thing
scoreboard players set @s sab.botLookTime 30

#remember what "look" mode we're in
scoreboard players operation @s sab.botLookMode = #found_target sab.var

#set cooldown for "glancing"
execute if score @s sab.botLookMode matches 3 store result score @s sab.botGlanceTime run random value 70..100