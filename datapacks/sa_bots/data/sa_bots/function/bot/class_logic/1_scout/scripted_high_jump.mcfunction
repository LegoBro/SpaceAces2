#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 5
scoreboard players set @s sab.botForceAngleTime 0

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 1501
execute if score @s sab.botScriptedAction matches 1003..1500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 1501

#jump when grounded
execute if entity @s[scores={sab.botScriptedAction=1501..1550,sab.groundedTime=2..}] run tag @s add sab.botJump
execute if entity @s[scores={sab.botScriptedAction=1501..1550,sab.groundedTime=2..}] run scoreboard players set @s sab.botScriptedAction 1551

#double jump in mid-air
tag @s remove input.jump.start
execute if entity @s[scores={sab.botScriptedAction=1551..1600,sab.airTime=5..}] run tag @s add input.jump.start
execute if entity @s[scores={sab.botScriptedAction=1551..1600,sab.airTime=5..}] run scoreboard players set @s sab.botScriptedAction 1601

#done
execute if score @s sab.botScriptedAction matches 1602.. run scoreboard players reset @s sab.botScriptedAction