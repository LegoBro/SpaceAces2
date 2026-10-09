#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 10
scoreboard players set @s sab.botForceAngleTime 0

#store what direction we were facing
execute if score @s sab.botScriptedAction matches 1003 store result score @s sab.botForceAngleYaw100 run data get entity @s Rotation[0] 100
execute if score @s sab.botScriptedAction matches 1003 run scoreboard players operation @s sab.botForceAngleYaw100 %= #36000 sab.var

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^2.2 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^2.2 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 1501

#hold still, look down, wait until we have 2 rockets ready to fire
execute store result score #test sab.var run data get entity @s Rotation[1]
execute if score @s sab.botScriptedAction matches 1502..1800 run scoreboard players set @s sab.botForceAngleTime 10
execute if score @s sab.botScriptedAction matches 1502..1800 run scoreboard players set @s sab.botForceAnglePitch100 9000
execute if score @s sab.botScriptedAction matches 1502..1611 run scoreboard players set @s sab.botPauseTime 2
execute if score @s sab.botScriptedAction matches 1502..1600 if entity @s[scores={sab.airTime=..1,ability.2.cooldown=..0}] if score #test sab.var matches 89.. run scoreboard players set @s sab.botScriptedAction 1601

#shoot rocket wall to go really high
execute if score @s sab.botScriptedAction matches 1601 run scoreboard players set @s SelectedItem 2
execute if score @s sab.botScriptedAction matches 1601 run scoreboard players set @s sab.botRightClick10Hz 0
execute if score @s sab.botScriptedAction matches 1621.. run scoreboard players reset @s sab.botScriptedAction