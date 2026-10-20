#executed by bot
#executed started at the position of the target (align y), pointed back at ourselves


#valid if we find ourselves
execute positioned ~-.6 ~-.5 ~-.6 if entity @s[dx=1.2,dy=100,dz=1.2] run return run scoreboard players set #found_direct_path sab.var 1
#=====

#keep going, but adjust height where needed
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. positioned ^ ^ ^1 run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive_height_adjust