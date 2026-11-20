#look at random angles and punch


#force angle
scoreboard players set @s sab.botForceAngleTime 10
scoreboard players set @s sab.botIgnoreAimTime 10

#random angle
execute store result score @s sab.botForceAngleYaw100 run random value 0..35999
execute store result score @s sab.botForceAnglePitch100 run random value -8900..8900


#manual control, move forward
scoreboard players set @s sab.botNavigationMode 4
scoreboard players set @s sab.botManualControlTime 10
function sa_bots:bot/class_logic/force_forward_input
scoreboard players set @s sab.botCrouchTime 10

#swing arm every few seconds
execute store result score #random sab.var run random value 15..17
scoreboard players operation #var sab.var = @s sab.botID
scoreboard players operation #var sab.var += #2sec sab.var
scoreboard players operation #var sab.var %= #random sab.var
execute if score #var sab.var matches 0 run swing @s