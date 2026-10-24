#executed by bot with sab.botTimeSinceProgress=1..


#jump if there's a passable 1-block high obstable in the way
execute if score @s sab.botTimeSinceProgress matches 1.. at e-0-0-0-2 positioned ^ ^ ^.6 unless block ~ ~ ~ #sa_bots:bot_no_jump[half=bottom] if block ~ ~1.4 ~ #sa_bots:not_solid if block ~ ~2.4 ~ #sa_bots:not_solid unless block ~ ~.5 ~ #sa_bots:not_solid run tag @s add sab.botJump
execute if score @s sab.botTimeSinceProgress matches 2.. at e-0-0-0-2 positioned ^ ^ ^.6 unless block ~ ~ ~ #minecraft:slabs[half=bottom] if block ~ ~1.4 ~ #sa_bots:not_solid if block ~ ~2.4 ~ #sa_bots:not_solid unless block ~ ~.5 ~ #sa_bots:not_solid run tag @s add sab.botJump

#jump if we need to get onto a ladder
execute if score @s sab.botTimeSinceProgress matches 2.. if block ~ ~.6 ~ #minecraft:climbable run tag @s add sab.botJump

#try to strafe around obstacles that block our movement direction
execute if entity @s[scores={sab.botTimeSinceProgress=2..,sab.botMoveRotationOffset=..0}] \
    unless score @s sab.botScriptedAction matches 1.. unless score @s sab.botNavigationMode matches 0 \
    unless block ~ ~-.1 ~ #minecraft:stairs[half=bottom] unless block ~ ~.6 ~ #minecraft:climbable \
    facing entity e-0-0-0-2 feet rotated ~ 0 \
    positioned ^ ^ ^.6 unless block ~ ~ ~ #sa_bots:not_solid run function sa_bots:bot/movement/1_grounded/try_to_strafe_around_obstacle

#sneak if stuck (when tagged to do so)
execute if entity @s[tag=sab.botSneakIfStuck,scores={sab.botTimeSinceProgress=3..,sab.botCrouchTime=..0}] run scoreboard players set @s sab.botCrouchTime 10

#jump if we're stuck on something but could easily get over it
execute if entity @s[scores={sab.botTimeSinceProgress=3..,sab.groundedTime=8..}] facing entity e-0-0-0-2 feet rotated ~ 0 positioned ^ ^ ^.6 if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run tag @s add sab.botJump
execute if entity @s[scores={sab.botTimeSinceProgress=3..,sab.groundedTime=8..}] facing entity e-0-0-0-2 feet rotated ~ 0 if block ~ ~ ~ #slabs[type=bottom] positioned ^ ^ ^.6 if block ~ ~1 ~ #slabs[type=bottom] if block ~ ~2 ~ #sa_bots:not_solid if block ~ ~3 ~ #sa_bots:not_solid run tag @s add sab.botJump

#if stuck for a while, start trying to generate sub-targets if we're able to do that
execute if entity @s[scores={sab.botTimeSinceProgress=11..,sab.botLookingForSubTargets=0}] \
    unless block ~ ~.6 ~ #minecraft:climbable \
    unless score @s sab.botScriptedAction matches 1.. unless score @s sab.botNavigationMode matches 0 run scoreboard players set @s sab.botLookingForSubTargets 1
