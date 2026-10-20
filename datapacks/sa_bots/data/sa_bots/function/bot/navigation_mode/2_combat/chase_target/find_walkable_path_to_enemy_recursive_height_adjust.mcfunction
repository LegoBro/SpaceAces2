#this function will branch on one of these options, ordered by the likelihood of them happening
#if none of the conditions are met, the path check will stop in a failed state


#no height change
execute if block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid unless block ~ ~-1 ~ #sa_bots:not_solid \
    run return run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive
#=====

#rise 1 block
execute unless block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid \
    positioned ~ ~1 ~ \
    run return run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive
#=====

#fall 1 block (but not 2! 2 block fall means an un-scalable cliff)
execute if block ~ ~ ~ #sa_bots:not_solid if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~-1 ~ #sa_bots:not_solid unless block ~ ~-2 ~ #sa_bots:not_solid \
    positioned ~ ~-1 ~ \
    run return run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive
#=====

#rise 2 blocks
execute unless block ~ ~ ~ #sa_bots:not_solid unless block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid if block ~ ~3 ~ #sa_bots:not_solid \
    positioned ~ ~2 ~ \
    run return run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive
#=====

#rise 3 blocks
execute unless block ~ ~ ~ #sa_bots:not_solid unless block ~ ~1 ~ #sa_bots:not_solid unless block ~ ~2 ~ #sa_bots:not_solid if block ~ ~3 ~ #sa_bots:not_solid if block ~ ~4 ~ #sa_bots:not_solid \
    positioned ~ ~3 ~ \
    run return run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive
#=====