#run, jump, and punch in circles


#force angle
scoreboard players set @s sab.botForceAngleTime 10
scoreboard players set @s sab.botIgnoreAimTime 10

#spin in circles
scoreboard players add @s sab.botForceAngleYaw100 1500
scoreboard players operation @s sab.botForceAngleYaw100 %= #36000 sab.var

#look up
scoreboard players set @s sab.botForceAnglePitch100 -4400

#jump every time we're grounded
tag @s[scores={sab.botMoveState=1,sab.groundedTime=3..}] add sab.botJump

#manual control, move forward
scoreboard players set @s sab.botNavigationMode 4
scoreboard players set @s sab.botManualControlTime 10
function sa_bots:bot/class_logic/force_forward_input

#swing arm every few seconds
execute store result score #random sab.var run random value 15..17
scoreboard players operation #var sab.var = @s sab.botID
scoreboard players operation #var sab.var += #2sec sab.var
scoreboard players operation #var sab.var %= #random sab.var
execute if score #var sab.var matches 0 run swing @s