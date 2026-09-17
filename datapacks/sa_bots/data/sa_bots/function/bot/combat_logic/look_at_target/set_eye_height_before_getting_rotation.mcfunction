#"anchored eyes" doesn't work! we will have to do it ourselves...

#player eye height is 1.62 blocks
#this corresponds to size=100


#0.25
execute unless score #eye_height sab.var matches 35.. positioned ~ ~.405 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#0.5
execute if score #eye_height sab.var matches 35..59 positioned ~ ~.81 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#0.85
execute if score #eye_height sab.var matches 60..86 positioned ~ ~1.377 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#0.9
execute if score #eye_height sab.var matches 87..94 positioned ~ ~1.458 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#1
execute if score #eye_height sab.var matches 95..109 positioned ~ ~1.62 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#1.15
execute if score #eye_height sab.var matches 110..119 positioned ~ ~1.863 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
#1.25
execute if score #eye_height sab.var matches 120.. positioned ~ ~2.025 ~ run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal_for_target
