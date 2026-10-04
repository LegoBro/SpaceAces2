#executed at 10hz while the bot is doing a scripted action


#ignore anything we're shooting or looking at
scoreboard players set @s sab.botIgnoreAimTime 5
scoreboard players set @s sab.botForceAngleTime 0

#when we reach a wall or cliff, get ready to jump
execute if score @s sab.botScriptedAction matches 3..500 rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 501
execute if score @s sab.botScriptedAction matches 3..500 rotated ~ 0 positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botScriptedAction 501
execute if score @s sab.botScriptedAction matches 3..500 if entity @s[scores={sab.botBestDistanceToTargetX=-3..3,sab.botBestDistanceToTargetY=-3..3}] run scoreboard players set @s sab.botScriptedAction 501

#hold still before jumping
execute if entity @s[scores={sab.botScriptedAction=501..600}] run scoreboard players set @s sab.botForceAngleTime 5
execute if entity @s[scores={sab.botScriptedAction=501..600}] run scoreboard players set @s sab.botForceAnglePitch100 -2000
execute if entity @s[scores={sab.botScriptedAction=501..600}] run scoreboard players set @s sab.botMoveRotationOffsetTime 2
execute if entity @s[scores={sab.botScriptedAction=501..600}] run scoreboard players set @s sab.botMoveRotationOffset 180
#sneak to charge up a big jump
execute if entity @s[scores={sab.botScriptedAction=501..600}] run scoreboard players set @s sab.botCrouchTime 5

#jump when we've held the crouch long enough
tag @s remove input.jump
execute if entity @s[scores={sab.botScriptedAction=502..600,sab.groundedTime=2..,passive.cooldown=26..}] run tag @s add sab.botJump
execute if entity @s[scores={sab.botScriptedAction=502..600,sab.groundedTime=2..,passive.cooldown=26..}] run tag @s add input.jump
execute if entity @s[scores={sab.botScriptedAction=502..600,sab.groundedTime=2..,passive.cooldown=26..}] run scoreboard players set @s sab.botScriptedAction 601

#done
execute if score @s sab.botScriptedAction matches 602.. run scoreboard players reset @s sab.botScriptedAction