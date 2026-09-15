#do we have a destination? if not, get one
execute unless data entity @s data.destinations[0] run function sa_bots:bot/entity_task/1_go_after_nearest_enemy/pick_destination

#update target every few seconds
scoreboard players remove @s sab.botNavThinkTime 2
execute if score @s sab.botNavThinkTime matches ..0 run function sa_bots:bot/entity_task/1_go_after_nearest_enemy/pick_destination