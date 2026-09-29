#invalidate if we hit a block
execute unless block ~ ~ ~ #sa_bots:bot_shoots_through run return \
    run scoreboard players set #test sab.var -1
#=====

#keep going
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. positioned ^ ^ ^1 run \
    function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/validate_ray_offset_recursive

#(if we run out of recursions, that means this ray is valid)