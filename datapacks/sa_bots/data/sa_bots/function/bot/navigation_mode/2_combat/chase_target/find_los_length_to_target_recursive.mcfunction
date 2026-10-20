#exit out when we find ourselves
execute if entity @s[distance=..2] run return 1
#=====

#add -1 to validity if we hit a wall
execute unless block ~ ~ ~ #sa_bots:not_solid run scoreboard players remove #target_los_valid sab.var 1

#count up how far the ray goes
scoreboard players add #target_los_distance sab.var 1
execute if score #target_los_distance sab.var matches ..50 positioned ^ ^ ^1 run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_los_length_to_target_recursive