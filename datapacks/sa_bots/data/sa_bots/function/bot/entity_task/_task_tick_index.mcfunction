#executed at 20hz while following a task


#read task (already stored... let's not update it until we need to change it!)
#execute store result score @s sab.botTask run data get entity @s data.tasks[0].id


#don't follow a teammate if we're a leader
execute if score @s sab.botFollowers matches 1.. run scoreboard players reset @s sab.botFollowingPlayer

#pick a new base task if forced via tag
execute if entity @s[tag=sab.botMustPickNewTask,tag=!sab.botDoingNonBaseTask] run function sa_bots:bot/entity_task/_improvise_base_task

#logic tick for whatever task we're doing
execute if score @s sab.botTask matches 0 run return run function sa_bots:bot/entity_task/0_random_destination/_logic_tick
execute if score @s sab.botTask matches 1 run return run function sa_bots:bot/entity_task/1_go_after_nearest_enemy/_logic_tick
execute if score @s sab.botTask matches 2 run return run function sa_bots:bot/entity_task/2_go_after_specific_enemy/_logic_tick
execute if score @s sab.botTask matches 3 run return run function sa_bots:bot/entity_task/3_go_after_nearest_teammate/_logic_tick
execute if score @s sab.botTask matches 4 run return run function sa_bots:bot/entity_task/4_go_after_specific_teammate/_logic_tick
execute if score @s sab.botTask matches 5 run return run function sa_bots:bot/entity_task/5_find_healing/_logic_tick
execute if score @s sab.botTask matches 6 run return run function sa_bots:bot/entity_task/6_find_patrol_point/_logic_tick
execute if score @s sab.botTask matches 7 run return run function sa_bots:bot/entity_task/7_find_sniper_spot/_logic_tick
execute if score @s sab.botTask matches 8 run return run function sa_bots:bot/entity_task/8_find_turret_spot/_logic_tick
execute if score @s sab.botTask matches 9 run return run function sa_bots:bot/entity_task/9_random_destination_blue/_logic_tick
execute if score @s sab.botTask matches 10 run return run function sa_bots:bot/entity_task/10_random_destination_red/_logic_tick
execute if score @s sab.botTask matches 11 run return run function sa_bots:bot/entity_task/11_random_destination_unoccupied/_logic_tick
execute if score @s sab.botTask matches 12 run return run function sa_bots:bot/entity_task/12_random_destination_front_line_blue/_logic_tick
execute if score @s sab.botTask matches 13 run return run function sa_bots:bot/entity_task/13_random_destination_front_line_red/_logic_tick
execute if score @s sab.botTask matches 14 run return run function sa_bots:bot/entity_task/14_random_destination_within_current_sector/_logic_tick
execute if score @s sab.botTask matches 15 run return run function sa_bots:bot/entity_task/15_go_after_random_enemy/_logic_tick
#...