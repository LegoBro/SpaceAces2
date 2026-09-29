#executed by the entity our bot is targeting
#executed at the position of the bot (at eye height!)


# #test = 1 at the start of this function

#apply rotation right now to see what the finalized ray is going to look like
function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/set_e_rotation

#check if we can still traverse the entire ray without hitting a block
scoreboard players operation #recursions sab.var = #los_distance sab.var
scoreboard players remove #recursions sab.var 2
execute rotated as e-0-0-0-1 positioned ^ ^ ^1 run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/validate_ray_offset_recursive

#if valid, #test = 1.
#this means no further action is needed, and we can skip applying rotation again in "_go" since that's redundant

#if invalid, we need to undo all offsets by returning Earl to his original position
execute if score #test sab.var matches -1 run tp e-0-0-0-1 ~ ~ ~