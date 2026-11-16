#hold primary weapon
scoreboard players set @s SelectedItem 0

#find angle to the target coordinates
execute store result entity @s data.lastSeenTarget.x double 0.01 run scoreboard players get @s sab.botTargetLastSeenX
execute store result entity @s data.lastSeenTarget.y double 0.01 run scoreboard players get @s sab.botTargetLastSeenY
execute store result entity @s data.lastSeenTarget.z double 0.01 run scoreboard players get @s sab.botTargetLastSeenZ
execute at @s run function sa_bots:bot/utility/get_rotation_towards_xyz_double with entity @s data.lastSeenTarget

#pitch up slightly to account for projectile arc
scoreboard players remove #target_pitch sab.var 1800

#add some randomness to yaw
execute store result score #random sab.var run random value -1000..1000
scoreboard players operation #target_yaw sab.var += #random sab.var

#look where we're supposed to look using forced angle
scoreboard players set @s sab.botForceAngleTime 3
scoreboard players operation #target_yaw sab.var %= #36000 sab.var
scoreboard players operation @s sab.botForceAngleYaw100 = #target_yaw sab.var
scoreboard players operation @s sab.botForceAnglePitch100 = #target_pitch sab.var

#crouch
scoreboard players set @s sab.botCrouchTime 10

#on shoot cooldown? wait a moment
execute if score @s shoot matches 1.. run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

#grab current rotation
execute store result score #yaw sab.var run data get entity @s Rotation[0] 100
scoreboard players operation #yaw sab.var %= #36000 sab.var
execute store result score #pitch sab.var run data get entity @s Rotation[1] 100

#figure out how far off we are
scoreboard players operation #yaw sab.var -= #target_yaw sab.var
scoreboard players add #yaw sab.var 18000
scoreboard players operation #yaw sab.var %= #36000 sab.var
scoreboard players remove #yaw sab.var 18000
scoreboard players operation #target_pitch sab.var -= #pitch sab.var

#not aiming at target yet? wait a moment
execute unless score #yaw sab.var matches -1500..1500 run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
execute unless score #target_pitch sab.var matches -1500..1500 run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

#shoot stickybomb
scoreboard players set @s sab.botRightClick10Hz 0
scoreboard players remove @s sab.botShootStickyBombQuota 1