#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 10
scoreboard players set @s sab.botForceAngleTime 0


#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 1..500 rotated ~ 0 positioned ^ ^ ^1.8 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 501
execute if score @s sab.botScriptedAction matches 1..500 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 501
execute if score @s sab.botScriptedAction matches 1..500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 501

#crouch to shoot sticky bombs
execute if score @s sab.botScriptedAction matches 501..600 run scoreboard players set @s sab.botCrouchTime 5
execute store result score #test sab.var run data get entity @s Rotation[1]
#hold still, look down, shoot 1 sticky
execute if score @s sab.botScriptedAction matches 502..600 run scoreboard players set @s sab.botForceAngleTime 10
execute if score @s sab.botScriptedAction matches 502..600 run scoreboard players set @s sab.botForceAnglePitch100 8800
execute if score @s sab.botScriptedAction matches 502..612 run scoreboard players set @s sab.botPauseTime 2
execute if score @s sab.botScriptedAction matches 502..600 if score #test sab.var matches 86.. run scoreboard players set @s[scores={sab.airTime=..1}] sab.botRightClick10Hz 1
execute if score @s sab.botScriptedAction matches 502..600 if score @s shoot matches 1.. unless score @s reload matches 1.. run scoreboard players set @s sab.botScriptedAction 601

#jump, uncrouch, detonate
execute if entity @s[scores={sab.botScriptedAction=611..700}] run tag @s add sab.botJump
execute if entity @s[scores={sab.botScriptedAction=612..700}] run scoreboard players set @s SelectedItem 1
execute if entity @s[scores={sab.botScriptedAction=612..700}] run scoreboard players set @s sab.botRightClick10Hz 0
execute if entity @s[scores={sab.botScriptedAction=612..700}] run scoreboard players set @s sab.botScriptedAction 701

#done
execute if score @s sab.botScriptedAction matches 702.. run scoreboard players reset @s sab.botScriptedAction