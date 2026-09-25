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

#set recursions based on how far away we are
scoreboard players set #base_recursions sab.var 0
execute if score #los_distance sab.var matches 7..12 run scoreboard players set #base_recursions sab.var 1
execute if score #los_distance sab.var matches 13..17 run scoreboard players set #base_recursions sab.var 2
execute if score #los_distance sab.var matches 18.. run scoreboard players set #base_recursions sab.var 3

#apply offset based on speed
#x
scoreboard players operation #recursions sab.var = #base_recursions sab.var
execute if score #recursions sab.var matches 1.. as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_x_large
#z
scoreboard players operation #recursions sab.var = #base_recursions sab.var
execute if score #recursions sab.var matches 1.. as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_z_large
