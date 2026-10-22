#executed each time we empty the destinations list


#read task (already stored... let's not update it until we need to change it!)
#execute store result score @s sab.botTask run data get entity @s data.tasks[0].id


#clear old tag indicating that the last thing we completed was a base task
scoreboard players reset @s sab.botPreviousNonBaseTask

#follow the script for whatever task we're doing (some can loop forever, others will kick us off and onto another task)
execute if score @s sab.botTask matches ..0 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 1 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 2 run return run function sa_bots:bot/entity_task/2_go_after_specific_enemy/reached_destination
execute if score @s sab.botTask matches 3 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 4 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 5 run return run function sa_bots:bot/entity_task/complete_non_base_task
execute if score @s sab.botTask matches 6 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 7 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 8 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 9 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 10 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 11 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 12 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 13 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 14 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 15 run return run function sa_bots:bot/entity_task/_improvise_base_task
execute if score @s sab.botTask matches 16 run return run function sa_bots:bot/entity_task/16_go_to_active_control_point/reached_destination_likely_keep_going
execute if score @s sab.botTask matches 17 run return run function sa_bots:bot/entity_task/16_go_to_active_control_point/reached_destination_likely_keep_going
execute if score @s sab.botTask matches 18 run return run function sa_bots:bot/entity_task/18_avoid_nearest_enemy/pick_destination
execute if score @s sab.botTask matches 19.. run return run function sa_bots:bot/entity_task/19_avoid_specific_enemy/pick_destination
#...
