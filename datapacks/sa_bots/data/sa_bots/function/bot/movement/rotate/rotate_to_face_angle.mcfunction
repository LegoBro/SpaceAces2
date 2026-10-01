#look in a defined direction


#grab current rotation
execute store result score #yaw sab.var run data get entity @s Rotation[0] 100
scoreboard players operation #yaw sab.var %= #36000 sab.var
execute store result score #pitch sab.var run data get entity @s Rotation[1] 100

#if a component is undefined, we set it to our current rotation
execute unless score @s sab.botForceAngleYaw100 matches -2147483648..2147483647 run \
    scoreboard players operation @s sab.botForceAngleYaw100 = #yaw sab.var
execute unless score @s sab.botForceAnglePitch100 matches -2147483648..2147483647 run \
    scoreboard players operation @s sab.botForceAnglePitch100 = #pitch sab.var

#figure out how far off we are
scoreboard players operation #yaw_difference sab.var = #yaw sab.var
scoreboard players operation #yaw_difference sab.var -= @s sab.botForceAngleYaw100
scoreboard players add #yaw_difference sab.var 18000
scoreboard players operation #yaw_difference sab.var %= #36000 sab.var
scoreboard players remove #yaw_difference sab.var 18000
scoreboard players operation #pitch sab.var -= @s sab.botForceAnglePitch100

#set aim speed based on skill
scoreboard players operation #var sab.var = @s sab.botSkill

#rotate to look towards target
execute if score #var sab.var matches ..2 run function sa_bots:bot/movement/rotate/aim_speeds/1
execute if score #var sab.var matches 3..4 run function sa_bots:bot/movement/rotate/aim_speeds/2
execute if score #var sab.var matches 5..6 run function sa_bots:bot/movement/rotate/aim_speeds/3
execute if score #var sab.var matches 7..8 run function sa_bots:bot/movement/rotate/aim_speeds/4
execute if score #var sab.var matches 9.. run function sa_bots:bot/movement/rotate/aim_speeds/5
