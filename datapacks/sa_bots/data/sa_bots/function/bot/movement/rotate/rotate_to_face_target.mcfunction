#look at the thing


#quit out and rotate without focus if commanded to do so
execute if score @s sab.botIgnoreAimTime matches 1.. \
    run return run function sa_bots:bot/movement/rotate/rotate_without_focus
#=====


#grab current rotation
execute store result score #yaw sab.var run data get entity @s Rotation[0] 100
scoreboard players operation #yaw sab.var %= #36000 sab.var
execute store result score #pitch sab.var run data get entity @s Rotation[1] 100

#figure out how far off we are
scoreboard players operation #yaw_difference sab.var = #yaw sab.var
scoreboard players operation #yaw_difference sab.var -= @s sab.botTargetAngleYaw100
scoreboard players add #yaw_difference sab.var 18000
scoreboard players operation #yaw_difference sab.var %= #36000 sab.var
scoreboard players remove #yaw_difference sab.var 18000
scoreboard players operation #pitch sab.var -= @s sab.botTargetAnglePitch100

#debug, get info about rotations
#tellraw @a[distance=..2] ["\nyaw_current=",{score:{name:"#yaw",objective:"sab.var"}}, \
    "\nbotTargetAngleYaw100=",{score:{name:"@s",objective:"sab.botTargetAngleYaw100"}}, \
    "\nyaw_difference=",{score:{name:"#yaw_difference",objective:"sab.var"}} \
    ]

#rotate to look towards target
execute if score @s sab.botSkill matches ..2 run function sa_bots:bot/movement/rotate/aim_speeds/1
execute if score @s sab.botSkill matches 3..4 run function sa_bots:bot/movement/rotate/aim_speeds/2
execute if score @s sab.botSkill matches 5..6 run function sa_bots:bot/movement/rotate/aim_speeds/3
execute if score @s sab.botSkill matches 7..8 run function sa_bots:bot/movement/rotate/aim_speeds/4
execute if score @s sab.botSkill matches 9.. run function sa_bots:bot/movement/rotate/aim_speeds/5

#save how far off we are
scoreboard players operation @s sab.botTargetAngleDifferenceYaw = #yaw_difference sab.var
scoreboard players operation @s sab.botTargetAngleDifferencePitch = #pitch sab.var

#debug: instant aim
#execute at @s run function sa_bots:bot/movement/rotate/lock_on_yaw
#execute at @s run function sa_bots:bot/movement/rotate/lock_on_pitch