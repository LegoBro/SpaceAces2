#executed by a bot

#must set score "#choice sab.var" before running


#index, grab task data
function sa_bots:bot/entity_task/get_possible_task_data

#don't force picking a new task. we just did that!
tag @s remove sab.botMustPickNewTask

#adopt task with no question since we're forcing this
data remove entity @s data.tasks[{is_base_task:1}]
execute unless data entity @s data.tasks[0] run data modify entity @s data.tasks set value []
data modify entity @s data.tasks append from storage sa_bots:generic new_task

#internalize whatever task 0 is
execute store result score @s sab.botTask run data get entity @s data.tasks[0].id

#immediately start doing the new task
function sa_bots:bot/entity_task/_task_tick_index