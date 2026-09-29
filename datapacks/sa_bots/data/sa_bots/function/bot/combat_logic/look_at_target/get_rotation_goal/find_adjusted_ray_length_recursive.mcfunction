#done if we hit a block
execute unless block ~ ~ ~ #sa_bots:bot_shoots_through run return 0
#=====

#count up how far this goes
scoreboard players add #valid_distance sab.var 1

#keep going
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. positioned ^ ^ ^1 run \
    function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/find_adjusted_ray_length_recursive