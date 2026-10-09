#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
execute if score @s sab.botScriptedAction matches 2000..2600 run scoreboard players set @s sab.botIgnoreAimTime 10
scoreboard players set @s sab.botForceAngleTime 0

#store what direction we were facing
execute if score @s sab.botScriptedAction matches 2003 store result score @s sab.botForceAngleYaw100 run data get entity @s Rotation[0] 100
execute if score @s sab.botScriptedAction matches 2003 run scoreboard players operation @s sab.botForceAngleYaw100 %= #36000 sab.var

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 2003..2500 rotated ~ 0 positioned ^ ^ ^2.5 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501
execute if score @s sab.botScriptedAction matches 2003..2500 rotated ~ 0 positioned ^ ^ ^2.25 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501
execute if score @s sab.botScriptedAction matches 2003..2500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 2501

#leap when off cooldown
#hold still, look down
execute store result score #test sab.var run data get entity @s Rotation[1]
execute if score @s sab.botScriptedAction matches 2502..2605 run scoreboard players set @s sab.botForceAngleTime 10
execute if score @s sab.botScriptedAction matches 2502..2605 run scoreboard players set @s sab.botForceAnglePitch100 9000
execute if score @s sab.botScriptedAction matches 2502..2600 run scoreboard players set @s sab.botPauseTime 2
execute if score @s sab.botScriptedAction matches 2502..2600 if entity @s[scores={sab.airTime=..1,reload=..0,totalShots=1..}] if score #test sab.var matches 88.. run scoreboard players set @s sab.botScriptedAction 2601

#jump, shoot, float over gap, hold jump until we land
tag @s remove input.jump
execute if score @s sab.botScriptedAction matches 2603 run tag @s add sab.botJump
execute if score @s sab.botScriptedAction matches 2603 run scoreboard players set @s sab.botRightClick10Hz 0
execute if score @s sab.botScriptedAction matches 2604..2700 run tag @s add input.jump
execute if score @s sab.botScriptedAction matches 2605.. if score @s sab.airTime matches ..1 run scoreboard players set @s sab.botScriptedAction 2701

#done
execute if score @s sab.botScriptedAction matches 2702.. run scoreboard players reset @s sab.botScriptedAction