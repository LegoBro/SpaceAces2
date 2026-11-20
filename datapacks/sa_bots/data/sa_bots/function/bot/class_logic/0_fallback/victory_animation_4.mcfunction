#look up, spin in circles, fire gun


#force angle
scoreboard players set @s sab.botForceAngleTime 10
scoreboard players set @s sab.botIgnoreAimTime 10

#spin in circles
execute store result score #random sab.var run random value 1300..1700
scoreboard players operation @s sab.botForceAngleYaw100 -= #random sab.var
scoreboard players operation @s sab.botForceAngleYaw100 %= #36000 sab.var

#look way up
scoreboard players set @s sab.botForceAnglePitch100 -8000


#hold gun, shoot
scoreboard players set @s SelectedItem 0
scoreboard players set @s sab.botRightClick10Hz 2

#manual control, move forward
scoreboard players set @s sab.botNavigationMode 4
scoreboard players set @s sab.botManualControlTime 10
function sa_bots:bot/class_logic/force_no_movement_input