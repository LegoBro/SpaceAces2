#executed when a bot is shooting at a mobile entity
#executed at e-0-0-0-1

#quickly peek at what pitch we're looking at
execute as e-0-0-0-1 store result score #pitch_target sab.var run data get entity @s Rotation[1] 100
#don't do anything if we're shooting upward
execute if score #pitch_target sab.var matches ..-10 run return fail
#=====

scoreboard players set #distance sab.var -1

#if we find a floor within a reasonable distance, adjust angle to look down at it
execute unless block ~ ~-1 ~ #sa_bots:not_solid run scoreboard players set #distance sab.var 0
execute if block ~ ~-1 ~ #sa_bots:not_solid unless block ~ ~-2 ~ #sa_bots:not_solid run scoreboard players set #distance sab.var 1
execute if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid unless block ~ ~-3 ~ #sa_bots:not_solid run scoreboard players set #distance sab.var 2
execute if block ~ ~-1 ~ #sa_bots:not_solid if block ~ ~-2 ~ #sa_bots:not_solid if block ~ ~-3 ~ #sa_bots:not_solid unless block ~ ~-4 ~ #sa_bots:not_solid run scoreboard players set #distance sab.var 3

execute if score #distance sab.var matches 0.. run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/move_to_floor_go