#executed by the entity that our bot is targeting
#executed at bot position / e-0-0-0-1 position

#apply a randomized offset to reduce accuracy
#this will be more intense if the target is moving quickly horizontally
#this will be more intense based on LOS distance

#read what the bot's current offsets are
scoreboard players operation #x_offset sab.var = #random_aim_offset_x sab.var
scoreboard players operation #z_offset sab.var = #random_aim_offset_z sab.var

#base multiplier is based on LOS distance (assuming the target is not moving)
scoreboard players set #multiplier_base sab.var 100
execute unless score #dx sab.var matches -15..15 run scoreboard players operation #multiplier_base sab.var += #los_distance sab.var
execute unless score #dz sab.var matches -15..15 run scoreboard players operation #multiplier_base sab.var += #los_distance sab.var
execute if score #multiplier_base sab.var matches 116.. run scoreboard players set #multiplier_base sab.var 115
#x multiplier based on how fast the target is moving on x axis
scoreboard players operation #multiplier sab.var = #multiplier_base sab.var
execute if score #dx sab.var matches 1.. run scoreboard players operation #multiplier sab.var += #dx sab.var
execute if score #dx sab.var matches ..-1 run scoreboard players operation #multiplier sab.var -= #dx sab.var
scoreboard players operation #x_offset sab.var *= #multiplier sab.var
scoreboard players operation #x_offset sab.var /= #200 sab.var
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_x_random
#z multiplier based on how fast the target is moving on z axis
scoreboard players operation #multiplier sab.var = #multiplier_base sab.var
execute if score #dz sab.var matches 1.. run scoreboard players operation #multiplier sab.var += #dz sab.var
execute if score #dz sab.var matches ..-1 run scoreboard players operation #multiplier sab.var -= #dz sab.var
scoreboard players operation #z_offset sab.var *= #multiplier sab.var
scoreboard players operation #z_offset sab.var /= #200 sab.var
execute as e-0-0-0-1 at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_z_random
