#line-of-sight found!

#reset time since we've seen target
scoreboard players set @s sab.botTimeSinceLOS 0

#get target rot/yaw
scoreboard players operation @s sab.botTargetAngleYaw100 = #yaw_target sab.var
scoreboard players operation @s sab.botTargetAnglePitch100 = #pitch_target sab.var

#we are looking at a thing
scoreboard players set @s sab.botLookTime 50