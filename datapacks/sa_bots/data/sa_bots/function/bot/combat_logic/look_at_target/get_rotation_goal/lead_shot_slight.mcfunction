#executed by the entity that our bot is targeting
#executed at bot position / e-0-0-0-1 position


#offset based on target's move speed
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_x_slight
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_z_slight
