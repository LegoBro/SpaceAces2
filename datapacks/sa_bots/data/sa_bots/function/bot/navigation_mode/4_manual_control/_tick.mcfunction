#executed by a bot entity at 20hz


#our inputs determine move angle, not the other way around
tag @s add sab.doNotClearInputs

#count down how long we do this logic
scoreboard players remove @s[scores={sab.botManualControlTime=1..}] sab.botManualControlTime 1
#when time hits 0, return to roaming or following waypoints
execute if score @s sab.botManualControlTime matches ..0 run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately


#set movement vector based on our inputs (no input = no movement)
scoreboard players set #input_yaw sab.var -1
scoreboard players set #input_fwd_back sab.var 0
scoreboard players set #input_left_right sab.var 0
execute if entity @s[tag=input.forward] run scoreboard players add #input_fwd_back sab.var 1
execute if entity @s[tag=input.backward] run scoreboard players remove #input_fwd_back sab.var 1
execute if entity @s[tag=input.right] run scoreboard players add #input_left_right sab.var 1
execute if entity @s[tag=input.left] run scoreboard players remove #input_left_right sab.var 1
execute if score #input_fwd_back sab.var matches 1 if score #input_left_right sab.var matches 0 run scoreboard players set #input_yaw sab.var 0
execute if score #input_fwd_back sab.var matches 1 if score #input_left_right sab.var matches 1 run scoreboard players set #input_yaw sab.var 45
execute if score #input_fwd_back sab.var matches 0 if score #input_left_right sab.var matches 1 run scoreboard players set #input_yaw sab.var 90
execute if score #input_fwd_back sab.var matches -1 if score #input_left_right sab.var matches 1 run scoreboard players set #input_yaw sab.var 135
execute if score #input_fwd_back sab.var matches -1 if score #input_left_right sab.var matches 0 run scoreboard players set #input_yaw sab.var 180
execute if score #input_fwd_back sab.var matches -1 if score #input_left_right sab.var matches -1 run scoreboard players set #input_yaw sab.var 225
execute if score #input_fwd_back sab.var matches 0 if score #input_left_right sab.var matches -1 run scoreboard players set #input_yaw sab.var 270
execute if score #input_fwd_back sab.var matches 1 if score #input_left_right sab.var matches -1 run scoreboard players set #input_yaw sab.var 315

#summon move target to make us go forward
execute store result storage sa_bots:generic rotation int 1 run scoreboard players get #input_yaw sab.var
function sa_bots:bot/navigation_mode/4_manual_control/summon_move_target with storage sa_bots:generic
execute if score #input_yaw sab.var matches -1 run scoreboard players set @s sab.botPauseTime 2