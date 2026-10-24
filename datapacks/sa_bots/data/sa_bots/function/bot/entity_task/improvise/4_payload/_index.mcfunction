execute if score @s sab.botGoal matches 1 run function sa_bots:bot/entity_task/improvise/4_payload/push
execute if score @s sab.botGoal matches 2 unless score @s Team matches 2 run function sa_bots:bot/entity_task/improvise/4_payload/defend
execute if score @s sab.botGoal matches 2 if score @s Team matches 2 run function sa_bots:bot/entity_task/improvise/4_payload/defend_red
execute if score @s sab.botGoal matches 3 run function sa_bots:bot/entity_task/improvise/4_payload/pick