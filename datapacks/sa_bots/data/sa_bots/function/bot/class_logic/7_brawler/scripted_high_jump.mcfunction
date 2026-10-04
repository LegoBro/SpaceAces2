#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 5
scoreboard players set @s sab.botForceAngleTime 0

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 1501

#hold still, look up
execute store result score #test sab.var run data get entity @s Rotation[1]
execute if score @s sab.botScriptedAction matches 1502..1700 run scoreboard players set @s SelectedItem 1
execute if score @s sab.botScriptedAction matches 1502..1600 run scoreboard players set @s sab.botForceAngleTime 5
execute if score @s sab.botScriptedAction matches 1502..1600 run scoreboard players set @s sab.botForceAnglePitch100 -8000
execute if score @s sab.botScriptedAction matches 1502..1600 run scoreboard players set @s sab.botMoveRotationOffsetTime 2
execute if score @s sab.botScriptedAction matches 1502..1600 run scoreboard players set @s sab.botMoveRotationOffset 180
execute if score @s sab.botScriptedAction matches 1502..1600 if entity @s[scores={sab.airTime=..1,ability.1.cooldown=..0}] if score #test sab.var matches ..-75 run scoreboard players set @s sab.botScriptedAction 1601

#leap and jump! done.
execute if score @s sab.botScriptedAction matches 1601.. run tag @s add sab.botJump
execute if score @s sab.botScriptedAction matches 1602.. run scoreboard players set @s sab.botRightClick10Hz 1
execute if score @s sab.botScriptedAction matches 1602.. run tag @s add sab.leapSlamNoTarget
execute if score @s sab.botScriptedAction matches 1602.. run scoreboard players reset @s sab.botScriptedAction