#executed by the entity that our bot is targeting
#executed at bot position / e-0-0-0-1 position


#compare target coordinate to the coordinate we last saw them at
# #bot_observed_x = last tick
# #observe_x = this tick

scoreboard players operation #dx sab.var = #observe_x sab.var
scoreboard players operation #dx sab.var -= #bot_observed_x sab.var

scoreboard players operation #dz sab.var = #observe_z sab.var
scoreboard players operation #dz sab.var -= #bot_observed_z sab.var

#a normal walk speed comes out to around 45

#offset based on target's move speed
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_x_slight
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_z_slight