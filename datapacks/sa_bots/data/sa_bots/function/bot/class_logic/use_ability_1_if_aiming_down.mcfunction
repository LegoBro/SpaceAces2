scoreboard players set @s SelectedItem 1

#look down
scoreboard players set @s sab.botForceAngleTime 3
scoreboard players reset @s sab.botForceAngleYaw100
scoreboard players set @s sab.botForceAnglePitch100 8500

#on shoot cooldown? wait a moment
execute if score @s shoot matches 1.. run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

#not aiming down yet? wait a moment
execute store result score #pitch sab.var run data get entity @s Rotation[1] 100
execute if score #pitch sab.var matches ..7800 run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

scoreboard players set @s sab.botRightClick10Hz 1
