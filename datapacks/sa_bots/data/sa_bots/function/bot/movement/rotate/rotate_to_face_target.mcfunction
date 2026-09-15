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
execute if score #yaw_difference sab.var matches ..-4500 at @s run rotate @s ~20 ~
execute if score #yaw_difference sab.var matches -4499..-2500 at @s run rotate @s ~7 ~
execute if score #yaw_difference sab.var matches -2499..-500 at @s run rotate @s ~3 ~
execute if score #yaw_difference sab.var matches -499..-100 at @s run rotate @s ~1 ~
execute if score #yaw_difference sab.var matches -99..99 at @s run function sa_bots:bot/movement/rotate/lock_on_yaw
execute if score #yaw_difference sab.var matches 100..499 at @s run rotate @s ~-1 ~
execute if score #yaw_difference sab.var matches 500..2499 at @s run rotate @s ~-3 ~
execute if score #yaw_difference sab.var matches 2500..4499 at @s run rotate @s ~-7 ~
execute if score #yaw_difference sab.var matches 4500.. at @s run rotate @s ~-20 ~

execute if score #pitch sab.var matches ..-4500 at @s run rotate @s ~ ~10
execute if score #pitch sab.var matches -4499..-2500 at @s run rotate @s ~ ~7
execute if score #pitch sab.var matches -2499..-500 at @s run rotate @s ~ ~3
execute if score #pitch sab.var matches -499..-100 at @s run rotate @s ~ ~1
execute if score #pitch sab.var matches -99..99 at @s run function sa_bots:bot/movement/rotate/lock_on_pitch
execute if score #pitch sab.var matches 100..499 at @s run rotate @s ~ ~-1
execute if score #pitch sab.var matches 500..2499 at @s run rotate @s ~ ~-3
execute if score #pitch sab.var matches 2500..4499 at @s run rotate @s ~ ~-7
execute if score #pitch sab.var matches 4500.. at @s run rotate @s ~ ~-10

#save how far off we are
scoreboard players operation @s sab.botTargetAngleDifferenceYaw = #yaw_difference sab.var
scoreboard players operation @s sab.botTargetAngleDifferencePitch = #pitch sab.var

#debug: instant aim
#execute at @s run function sa_bots:bot/movement/rotate/lock_on_yaw
#execute at @s run function sa_bots:bot/movement/rotate/lock_on_pitch