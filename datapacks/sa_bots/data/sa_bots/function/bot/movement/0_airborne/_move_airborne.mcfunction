#set pose
scoreboard players set @s sab.botPose 0
execute if score @s sab.botCrouchTime matches 1.. run scoreboard players set @s sab.botPose 2
execute if score @s sab.botPose matches 0 run data modify entity @s pose set value standing
execute if score @s sab.botPose matches 2 run data modify entity @s pose set value crouching

#first tick airborne after being grounded: we might do a coyote jump
execute if score @s sab.botMoveStateLastTick matches 1 run function sa_bots:bot/movement/0_airborne/first_tick_airborne_after_grounded

#clear jump tags
tag @s[tag=sab.botJump] remove sab.botJump
tag @s[tag=sab.botCoyoteJump] remove sab.botCoyoteJump

#track how long we've been in each state
scoreboard players add @s sab.airTime 1
scoreboard players set @s sab.groundedTime 0
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
execute at @s as f-0-0-0-1 run function sa_bots:bot/movement/0_airborne/finalize_move_target
scoreboard players operation @s sab.botMovementYaw = #rotation sab.var
execute store result score #x sab.var run data get entity @s Pos[0] 100000
execute store result score #z sab.var run data get entity @s Pos[2] 100000
scoreboard players operation #x2 sab.var -= #x sab.var
scoreboard players operation #z2 sab.var -= #z sab.var

#check angle difference between movement vector and facing angle
function sa_bots:bot/movement/find_difference_between_move_and_face_angle

#are we walking into a jumpable gap? do a jump to maybe get over it
#(no problem if this overlaps with the coyote jump, that would just set velocity to the same value twice)
execute if score @s sab.botMoveStateLastTick matches 1 at f-0-0-0-1 run function sa_bots:bot/movement/0_airborne/check_for_jumpable_gap

#--------------------------
#apply various multipliers to x and z velocity

#sneaking
execute if score @s sab.botPose matches 2 run function sa_bots:bot/movement/0_airborne/crouching_velocity_multiplier
#sprint jump
execute if entity @s[scores={sab.botIsSprinting=1..,sab.botJumpCooldown=1..}] run function sa_bots:bot/movement/0_airborne/sprint_jump_velocity_multiplier
#--------------------------


#apply force towards the target
#x
execute store result score #var sab.var run data get entity @s Motion[0] 10000
scoreboard players operation #var sab.var += #x2 sab.var
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #var sab.var
#z
execute store result score #var sab.var run data get entity @s Motion[2] 10000
scoreboard players operation #var sab.var += #z2 sab.var
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #var sab.var
