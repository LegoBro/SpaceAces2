#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 5
scoreboard players set @s sab.botForceAngleTime 0


#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 2001..2500 rotated ~ 0 positioned ^ ^ ^1.8 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501
execute if score @s sab.botScriptedAction matches 2001..2500 rotated ~ 0 positioned ^ ^ ^1.8 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501
execute if score @s sab.botScriptedAction matches 2001..2500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 2501

#crouch to shoot sticky bombs
execute if score @s sab.botScriptedAction matches 2501..2800 run scoreboard players set @s sab.botCrouchTime 5
execute store result score #test sab.var run data get entity @s Rotation[1]
#hold still, look down
execute if score @s sab.botScriptedAction matches 2502..2808 run scoreboard players set @s sab.botForceAngleTime 5
execute if score @s sab.botScriptedAction matches 2502..2808 run scoreboard players set @s sab.botForceAnglePitch100 8800
execute if score @s sab.botScriptedAction matches 2502..2808 run scoreboard players set @s sab.botMoveRotationOffsetTime 2
execute if score @s sab.botScriptedAction matches 2502..2808 run scoreboard players set @s sab.botMoveRotationOffset 180
#shoot first sticky
execute if score @s sab.botScriptedAction matches 2502..2600 if score #test sab.var matches 86.. run scoreboard players set @s[scores={sab.airTime=..1}] sab.botRightClick10Hz 1
execute if score @s sab.botScriptedAction matches 2502..2600 if score @s shoot matches 1.. unless score @s reload matches 1.. run scoreboard players set @s sab.botScriptedAction 2601
#wait to shoot second sticky
execute if score @s sab.botScriptedAction matches 2601..2700 unless score @s shoot matches 1.. run scoreboard players set @s sab.botScriptedAction 2701
#shoot a second sticky
execute if score @s sab.botScriptedAction matches 2701..2800 if score #test sab.var matches 86.. run scoreboard players set @s[scores={sab.airTime=..1}] sab.botRightClick10Hz 1
execute if score @s sab.botScriptedAction matches 2701..2800 if score @s shoot matches 1.. run scoreboard players set @s sab.botScriptedAction 2801

#sprint jump, detonate
execute if entity @s[scores={sab.botScriptedAction=2809..2900}] run scoreboard players set @s sab.botCrouchTime 1
execute if entity @s[scores={sab.botScriptedAction=2809..2900}] run tag @s add sab.botJumpNextLedge
execute if entity @s[scores={sab.botScriptedAction=2811..2900}] run tag @s add sab.botJump
execute if entity @s[scores={sab.botScriptedAction=2812..2900}] run scoreboard players set @s SelectedItem 1
execute if entity @s[scores={sab.botScriptedAction=2812..2900}] run scoreboard players set @s sab.botRightClick10Hz 1
execute if entity @s[scores={sab.botScriptedAction=2812..2900}] run scoreboard players set @s sab.botScriptedAction 2991

#done
execute if score @s sab.botScriptedAction matches 2992.. run scoreboard players reset @s sab.botScriptedAction