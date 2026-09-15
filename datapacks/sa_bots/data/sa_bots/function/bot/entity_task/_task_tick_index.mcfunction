#executed at 10hz while following a task


#read task (already stored... let's not update it until we need to change it!)
#execute store result score @s sab.botTask run data get entity @s data.tasks[0].id

#logic tick for whatever task we're doing
execute if score @s sab.botTask matches 0 run return run function sa_bots:bot/entity_task/0_random_destination/_logic_tick
execute if score @s sab.botTask matches 1 run return run function sa_bots:bot/entity_task/1_go_after_nearest_enemy/_logic_tick
#...