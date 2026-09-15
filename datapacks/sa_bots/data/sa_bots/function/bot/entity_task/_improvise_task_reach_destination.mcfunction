#executed each time we empty the destinations list


#read task (already stored... let's not update it until we need to change it!)
#execute store result score @s sab.botTask run data get entity @s data.tasks[0].id

#follow the script for whatever task we're doing
execute if score @s sab.botTask matches 0 run return run function sa_bots:bot/entity_task/0_random_destination/pick_destination
execute if score @s sab.botTask matches 1 run return run function sa_bots:bot/entity_task/1_go_after_nearest_enemy/pick_destination
#...