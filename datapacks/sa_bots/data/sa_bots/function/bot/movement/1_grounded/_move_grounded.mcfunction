#set pose
scoreboard players set @s sab.botPose 0
execute if block ~ ~.5 ~ #sa_bots:not_solid unless block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botPose 1
execute if score @s sab.botCrouchTime matches 1.. if score @s sab.botPose matches 0 run scoreboard players set @s sab.botPose 2
execute if score @s sab.botPose matches 0 run data modify entity @s pose set value standing
execute if score @s sab.botPose matches 1 run data modify entity @s pose set value swimming
execute if score @s sab.botPose matches 2 run data modify entity @s pose set value crouching

#stay sneaking if under something and already sneaking
execute if score @s sab.botCrouchTime matches 1.. unless block ~ ~2 ~ #sa_bots:not_solid run scoreboard players set @s sab.botCrouchTime 2

#special logic for state changes
execute unless score @s sab.botMoveStateLastTick matches 1 run function sa_bots:bot/movement/1_grounded/first_tick_grounded

#translate botJumpNextLedge to botCoyoteJump
execute if entity @s[tag=sab.botJumpNextLedge] run tag @s add sab.botCoyoteJump
tag @s[tag=sab.botJumpNextLedge] remove sab.botJumpNextLedge

#track how long we've been in each state
scoreboard players set @s sab.airTime 0
scoreboard players add @s sab.groundedTime 1
scoreboard players set @s sab.swimmingTime 0

#exit out if we didn't place a movement target
execute if score #placed_movement_target sab.var matches 0 run return 0
#=====


#the angle between us and the movement target is the angle we're moving at

#face movement direction if not looking at anything else
execute unless score @s sab.botLookTime matches 1.. run function sa_bots:bot/movement/rotate/rotate_without_focus
#try to look at target if we have one
execute if score @s sab.botLookTime matches 1.. run function sa_bots:bot/movement/rotate/rotate_to_face_target

#get a normalized vector from us to our movement target entity
execute at @s as f-0-0-0-1 run function sa_bots:bot/movement/1_grounded/finalize_move_target
scoreboard players operation @s sab.botMovementYaw = #rotation sab.var
execute store result score #x sab.var run data get entity @s Pos[0] 100000
execute store result score #z sab.var run data get entity @s Pos[2] 100000
scoreboard players operation #x2 sab.var -= #x sab.var
scoreboard players operation #z2 sab.var -= #z sab.var

#check angle difference between movement vector and facing angle
function sa_bots:bot/movement/find_difference_between_move_and_face_angle

#if pause time > 0, stop moving for a moment
execute if score @s sab.botPauseTime matches 1.. run \
    return run function sa_bots:bot/movement/misc/temporary_pause
#=====

#jump if there's a passable 1-block high obstable in the way
execute if score @s sab.botTimeSinceProgress matches 1.. at f-0-0-0-1 positioned ^ ^ ^.6 unless block ~ ~ ~ #sa_bots:bot_no_jump[half=bottom] if block ~ ~1.4 ~ #sa_bots:not_solid if block ~ ~2.4 ~ #sa_bots:not_solid unless block ~ ~.5 ~ #sa_bots:not_solid run tag @s add sab.botJump
execute if score @s sab.botTimeSinceProgress matches 2.. at f-0-0-0-1 positioned ^ ^ ^.6 unless block ~ ~ ~ #minecraft:slabs[half=bottom] if block ~ ~1.4 ~ #sa_bots:not_solid if block ~ ~2.4 ~ #sa_bots:not_solid unless block ~ ~.5 ~ #sa_bots:not_solid run tag @s add sab.botJump

#sneak if stuck (when tagged to do so)
execute if entity @s[tag=sab.botSneakIfStuck,scores={sab.botTimeSinceProgress=2..,sab.botCrouchTime=..0}] run scoreboard players set @s sab.botCrouchTime 10

#jump if we're stuck on something but could easily get over it
execute if entity @s[scores={sab.botTimeSinceProgress=3..,sab.groundedTime=11..}] facing entity f-0-0-0-1 feet rotated ~ 0 positioned ^ ^ ^.6 if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run tag @s add sab.botJump

#--------------------------
#apply various multipliers to x and z velocity

#movement_speed attribute
execute store result score #multiplier sab.var run attribute @s movement_speed get 100
scoreboard players operation #x2 sab.var *= #multiplier sab.var
scoreboard players operation #z2 sab.var *= #multiplier sab.var
#terrain
execute positioned ~ ~-0.2 ~ if block ~ ~ ~ #sa_bots:bot_odd_terrain run function sa_bots:bot/movement/1_grounded/terrain_velocity_multiplier
#crawling
execute if score @s sab.botPose matches 1 run function sa_bots:bot/movement/1_grounded/crawling_velocity_multiplier
#crouching
execute if score @s sab.botPose matches 2 run function sa_bots:bot/movement/1_grounded/crouching_velocity_multiplier
#determine whether the bot wants to (and is able to) sprint
execute if score @s sab.botPose matches 0 if entity @s[tag=sab.botCanSprint,scores={sab.botAngleDiffMoveAndFace=-45..45}] \
    run function sa_bots:bot/movement/1_grounded/sprinting_velocity_multiplier

#--------------------------

#perform jumps when requested
execute if entity @s[tag=sab.botJump] run function sa_bots:bot/movement/jump/_perform_jump


#apply force towards the target
#x
execute store result score #var sab.var run data get entity @s Motion[0] 10000
scoreboard players operation #var sab.var += #x2 sab.var
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #var sab.var
#z
execute store result score #var sab.var run data get entity @s Motion[2] 10000
scoreboard players operation #var sab.var += #z2 sab.var
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #var sab.var
