#executed by bot entity


#count down how long we do this
scoreboard players remove @s sab.botMovementYawLerpTime 1

#find difference between 2 angles
scoreboard players operation #rotation sab.var %= #360 sab.var
scoreboard players operation @s sab.botMovementYaw %= #360 sab.var
scoreboard players operation #yaw_difference sab.var = #rotation sab.var
scoreboard players operation #yaw_difference sab.var -= @s sab.botMovementYaw
#do nothing if angles already match within 1 degree
execute if score #yaw_difference sab.var matches -1..1 run return 1
execute unless score #yaw_difference sab.var matches -358..358 run return 1
#=====


#not matching: new angle is average of 2 angles

#angle (math) is average of 2 angles
scoreboard players operation #rotation sab.var += @s sab.botMovementYaw
scoreboard players operation #rotation sab.var /= #2 sab.var

#if the angle difference is > 180, rotate output by 180
execute unless score #yaw_difference sab.var matches -180..180 run scoreboard players add #rotation sab.var 180
scoreboard players operation #rotation sab.var %= #360 sab.var

#move towards the new angle
execute store result storage sa_bots:generic rotation int 1 run scoreboard players get #rotation sab.var
execute at @s as e-0-0-0-2 run function sa_bots:bot/movement/1_grounded/finalize_move_target_rotated_absolute with storage sa_bots:generic