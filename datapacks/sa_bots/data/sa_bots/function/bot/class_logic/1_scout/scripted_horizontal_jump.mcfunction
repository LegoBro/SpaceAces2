#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 10
scoreboard players set @s sab.botForceAngleTime 0

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 2003..2500 if entity @s[scores={sab.botJumpCooldown=1..}] run scoreboard players set @s sab.botScriptedAction 2550
execute if score @s sab.botScriptedAction matches 2003..2500 rotated ~ 0 positioned ^ ^ ^1.5 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501
execute if score @s sab.botScriptedAction matches 2003..2500 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 2501

#look up when getting ready to air dash
execute store result score #test sab.var run data get entity @s Rotation[1]
execute if score @s sab.botScriptedAction matches 1502.. run scoreboard players set @s sab.botForceAngleTime 10
execute if score @s sab.botScriptedAction matches 1502.. run scoreboard players reset @s sab.botForceAngleYaw100
execute if score @s sab.botScriptedAction matches 1502.. run scoreboard players set @s sab.botForceAnglePitch100 -1000

#jump when grounded
execute if entity @s[scores={sab.botScriptedAction=2501..2550,sab.groundedTime=2..}] if score #test sab.var matches -15..-5 run tag @s add sab.botJump
execute if entity @s[scores={sab.botScriptedAction=2501..2550,sab.groundedTime=2..}] if score #test sab.var matches -15..-5 run scoreboard players set @s sab.botScriptedAction 2551

#double jump and air dash at the same time while in mid-air
tag @s remove input.jump.start
execute if entity @s[scores={sab.botScriptedAction=2551..2600,sab.airTime=5..}] run tag @s add input.jump.start
execute if entity @s[scores={sab.botScriptedAction=2552..2600,sab.airTime=5..}] run function sa_bots:bot/class_logic/force_forward_input
execute if entity @s[scores={sab.botScriptedAction=2552..2600,sab.airTime=5..}] run function sa_bots:bot/class_logic/use_melee
execute if entity @s[scores={sab.botScriptedAction=2552..2600,sab.airTime=5..}] run scoreboard players set @s sab.botScriptedAction 2601

#done
execute if score @s sab.botScriptedAction matches 2602.. run scoreboard players reset @s sab.botScriptedAction