#executed by a bot

#must set score "#choice sab.var" before running


#cancel if we have too many tasks in the stack at once
execute if data entity @s data.tasks[5] run return fail
#=====


#index, grab task data
function sa_bots:bot/entity_task/get_possible_task_data

#adopt task with no question since we're forcing this
data modify entity @s data.tasks prepend from storage sa_bots:generic new_task

#internalize whatever task 0 is
execute store result score @s sab.botTask run data get entity @s data.tasks[0].id

#immediately start doing the new task
function sa_bots:bot/entity_task/_task_tick_index