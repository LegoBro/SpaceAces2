execute store result score #random sab.var run random value 1..5

#run away from the person we're looking at
execute if score #random sab.var matches 2.. run scoreboard players operation @s sab.botSeekingEnemy = @s sab.botTargetEntityID
execute if score #random sab.var matches 2.. run function sa_bots:bot/entity_task/add_non_base_task_macro {choice:19}

#avoid any enemy
execute if score #random sab.var matches 1 run function sa_bots:bot/entity_task/add_non_base_task_macro {choice:18}

#run away for at least 1 second
execute store result score @s sab.botLimitedTaskTime run random value 25..65

#don't just stand there! run!
scoreboard players set @s sab.botNavigationMode 1
