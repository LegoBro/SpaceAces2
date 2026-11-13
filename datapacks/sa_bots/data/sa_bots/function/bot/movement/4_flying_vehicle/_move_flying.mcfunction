#validate that we are, in fact, still riding a thing
scoreboard players set #riding sab.var 0
execute on vehicle run scoreboard players set #riding sab.var 1

#if not riding, we must exit this mode
execute if score #riding sab.var matches 0 run return run function sa_bots:bot/movement/4_flying_vehicle/cancel_vehicle
#=====


#vehicle stays alive as long as we ride it
execute on vehicle if entity @s[tag=class.deployable] run scoreboard players set @s sab.lifespan 6

#set pose
data modify entity @s pose set value standing
scoreboard players set @s sab.botPose 0

#we are invisible and invulnerable while in this state
execute unless score @s invis matches 6.. run scoreboard players set @s invis 6
execute unless score @s invulnerable matches 6.. run scoreboard players set @s invulnerable 6

#we are holding nothing and can't shoot while in this mode
scoreboard players set @s SelectedItem 7
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air
scoreboard players set @s shoot 5

#don't do scripted actions while in this mode
scoreboard players reset @s sab.botScriptedAction

#track how long we've been in each state
scoreboard players add @s sab.airTime 1
scoreboard players set @s sab.groundedTime 0
scoreboard players set @s sab.swimmingTime 0

#our rotation needs to match the vehicle
tag @s add sab.riderSelf
execute on vehicle rotated as @s run rotate @n[tag=sab.riderSelf,type=mannequin,distance=..1] ~ ~
tag @s remove sab.riderSelf


#determine flight mode (using navigation_mode, or directly chasing enemies)
execute store result score #bot_has_direct_los_to_enemy sab.var run \
    execute if entity @s[tag=!sab.botShootingFriendlyPlayer,tag=sab.botShootingActiveOpponent,scores={sab.lockedOntoEnemy=1..}]

#if we're targeting someone, the target is our new move target
execute if score #bot_has_direct_los_to_enemy sab.var matches 1 run function sa_bots:bot/movement/4_flying_vehicle/find_target_entity

#exit out if we didn't place a movement target
execute if score #placed_movement_target sab.var matches 0 run return 0
#=====


#get vector towards target (movement vector)
execute at @s as e-0-0-0-2 run function sa_bots:bot/movement/4_flying_vehicle/finalize_move_target
scoreboard players operation @s sab.botMovementYaw = #rotation sab.var

#check angle difference between movement vector and facing angle
#(note, while in this state, the bot will still be looking around and trying to target enemies!)
function sa_bots:bot/movement/find_difference_between_move_and_face_angle

#possible inputs:

# @s[tag=input.jump] -- fly up
# @s[tag=input.forward] -- fly forward
# @s[tag=input.backward] -- fly backward
# @s[tag=input.left] -- turn left
# @s[tag=input.right] -- turn right



#we're going to set our movement keys directly in this function!
tag @s add sab.doNotClearInputs

#default: hold forward key and nothing else
tag @s remove input.jump
tag @s add input.forward
tag @s remove input.backward
tag @s remove input.left
tag @s remove input.right


#don't move forward if we're too far off target
execute unless score @s sab.botAngleDiffMoveAndFace matches -40..40 run tag @s remove input.forward
execute unless score @s sab.botAngleDiffMoveAndFace matches -40..40 run scoreboard players remove @s[scores={sab.botTimeSinceProgress=1..}] sab.botTimeSinceProgress 1

#don't go forward if we're about to go in a block
execute at @s rotated ~ 0 unless block ^ ^-.5 ^1 #sa_bots:not_solid run tag @s remove input.forward

#back up if we're in a block or facing a block
execute at @s rotated ~ 0 unless block ^ ^-.5 ^0.25 #sa_bots:not_solid if block ^ ^-.5 ^-.75 #sa_bots:not_solid run tag @s[tag=!input.forward] add input.backward
execute at @s rotated ~ 0 unless block ^ ^-.5 ^1 #sa_bots:not_solid if block ^ ^-.5 ^-.75 #sa_bots:not_solid run tag @s[tag=!input.forward] add input.backward

#don't go forward if we're tareting an enemy and we're within 6m
execute if score #bot_has_direct_los_to_enemy sab.var matches 1 if score @s sab.botTargetEntityDistance matches ..6 run tag @s remove input.forward

#back up if too close to enemy
execute if score #bot_has_direct_los_to_enemy sab.var matches 1 if score @s sab.botTargetEntityDistance matches ..4 \
    unless score @s sab.botAngleDiffMoveAndFace matches -40..40 \
    at @s rotated ~ 0 if block ^ ^-.5 ^-.75 #sa_bots:not_solid run tag @s[tag=!input.forward] add input.backward

#turn to face target
execute if score @s sab.botAngleDiffMoveAndFace matches ..-5 run tag @s add input.right
execute if score @s sab.botAngleDiffMoveAndFace matches 5.. run tag @s add input.left

#find y difference between us and the move target
scoreboard players operation #target_dy sab.var = @s sab.botMoveLastTickY
scoreboard players operation #target_dy sab.var -= #target_y sab.var

#fighting enemy: we should be 1 block above their position
execute if score #bot_has_direct_los_to_enemy sab.var matches 1 if score #target_dy sab.var matches ..6 run tag @s add input.jump

#not fighting enemy: we should be 2 blocks above target
execute if score #bot_has_direct_los_to_enemy sab.var matches 0 if score #target_dy sab.var matches ..16 run tag @s add input.jump