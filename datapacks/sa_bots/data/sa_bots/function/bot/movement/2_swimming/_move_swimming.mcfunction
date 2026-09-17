#determine pose
#bots skill 3 and higher will swim by default
scoreboard players set @s[scores={sab.botSkill=3..}] sab.botPose 1
#standing if head is above water
execute unless block ~ ~1 ~ water unless block ~ ~1 ~ #sa_bots:waterloggable[waterlogged=true] if block ~ ~1 ~ #sa_bots:not_solid run scoreboard players set @s sab.botPose 0

#track how long we've been in each state
scoreboard players set @s sab.airTime 0
scoreboard players set @s sab.groundedTime 0
scoreboard players add @s sab.swimmingTime 1

#exit out if there's no movement target
execute unless entity f-0-0-0-1 run return run function sa_bots:bot/movement/2_swimming/hold_still_in_water
#=====


#the angle between us and the movement target is the angle we're moving at

#swimming pose: face movement direction directly if not looking at anything else
execute if score @s sab.botPose matches 1 unless score @s sab.botLookTime matches 1.. facing entity f-0-0-0-1 eyes run rotate @s ~ ~
#standing pose: face movement direction roughly
execute if score @s sab.botPose matches 0 unless score @s sab.botLookTime matches 1.. run function sa_bots:bot/movement/rotate/rotate_without_focus
#try to look at target if we have one
execute if score @s sab.botLookTime matches 1.. run function sa_bots:bot/movement/rotate/rotate_to_face_target

#get a normalized vector from us to our movement target entity
execute at @s as f-0-0-0-1 run function sa_bots:bot/movement/2_swimming/finalize_move_target
scoreboard players operation @s sab.botMovementYaw = #rotation sab.var
execute store result score #x sab.var run data get entity @s Pos[0] 100000
execute store result score #y sab.var run data get entity @s Pos[1] 100000
execute store result score #z sab.var run data get entity @s Pos[2] 100000
scoreboard players operation #x2 sab.var -= #x sab.var
scoreboard players operation #y2 sab.var -= #y sab.var
scoreboard players operation #z2 sab.var -= #z sab.var

#check angle difference between movement vector and facing angle
function sa_bots:bot/movement/find_difference_between_move_and_face_angle
#can't do swim pose while looking elsewhere
execute unless score @s sab.botAngleDiffMoveAndFace matches -45..45 run scoreboard players set @s sab.botPose 0
#set pose
execute if score @s sab.botPose matches 0 run data modify entity @s pose set value standing
execute if score @s sab.botPose matches 1 run data modify entity @s pose set value swimming

#increase velocity when in the swimming pose
execute if score @s sab.botPose matches 1 run function sa_bots:bot/movement/2_swimming/swim_pose_velocity_multiplier


#apply force towards the target
#x
execute store result score #var sab.var run data get entity @s Motion[0] 10000
scoreboard players operation #var sab.var += #x2 sab.var
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #var sab.var
#y
execute store result score #var sab.var run data get entity @s Motion[1] 10000
scoreboard players operation #var sab.var += #y2 sab.var
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #var sab.var
#z
execute store result score #var sab.var run data get entity @s Motion[2] 10000
scoreboard players operation #var sab.var += #z2 sab.var
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #var sab.var
