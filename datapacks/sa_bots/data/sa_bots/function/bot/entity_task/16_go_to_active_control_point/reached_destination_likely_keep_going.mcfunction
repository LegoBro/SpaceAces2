execute store result score #random sab.var run random value 1..7
#less likely to keep doing task if less cooperative
execute if score @s sab.botCooperativeness matches 6..7 store result score #random sab.var run random value 1..8
execute if score @s sab.botCooperativeness matches 1..5 store result score #random sab.var run random value 1..9
#less likely if we're in defend or pick mode
execute if score @s sab.botGoal matches 2 run scoreboard players add #random sab.var 2
execute if score @s sab.botGoal matches 3 run scoreboard players add #random sab.var 1

#pick task
execute if score #random sab.var matches 1..3 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:16}
execute if score #random sab.var matches 4..5 run function sa_bots:bot/entity_task/switch_base_task_forced_macro {choice:17}
execute if score #random sab.var matches 6.. run function sa_bots:bot/entity_task/_improvise_base_task