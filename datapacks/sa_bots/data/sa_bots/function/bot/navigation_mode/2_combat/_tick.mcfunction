#executed by a bot
#this should only be executed when the bot has a target within 25m (sab.botTargetEntityID matches 1..)
#note: target can't be on our own team

#=====

#create (or update) move_target, which is set to the target entity's position
scoreboard players set #found_target sab.var 0
execute unless data entity @s data.move_targets[0].metadata{is_sub_route:-1} run data modify entity @s data.move_targets prepend value {id:0,uuid:"0",x:0,y:0,z:0,metadata:{is_sub_route:-1}}
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
scoreboard players operation #team sab.var = @s Team
execute as @e[type=#projectile:has_hb,tag=hb,distance=1..25] if score @s id = #get_id sab.var unless score @s Team = #team sab.var run function sa_bots:bot/navigation_mode/2_combat/chase_target/get_waypoint_position
data modify entity @s data.move_targets[0] set from storage sa_bots:generic target

#exit out if no target was found
execute unless score #found_target sab.var matches 1 run return run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately
#=====

#exit out if LOS not valid
execute if score #target_los_valid sab.var matches ..-1 run return run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately
execute if score #target_los_distance sab.var matches 15.. run return run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately
#=====


#summon target to move towards
function sa_bots:bot/navigation_mode/1_follow_waypoints/summon_move_target with entity @s data.move_targets[0]


#count down how long we want to chase target
scoreboard players remove @s sab.botChaseTargetTime 1
execute if score @s sab.botChaseTargetTime matches ..0 run return run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately
#=====

#cancel if we're about to run off a cliff
execute facing entity e-0-0-0-2 feet rotated ~ 0 positioned ^ ^ ^1 if block ~ ~ ~ #sa_bots:not_solid if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid \
    positioned ^ ^ ^1 if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid run return run function sa_bots:bot/navigation_mode/0_roam/enter_roam_forget_move_targets_search_immediately
#=====
