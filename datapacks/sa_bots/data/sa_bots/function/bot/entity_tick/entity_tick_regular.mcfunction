#executed by bot entity
#executed at 10Hz



#----------------------------
#TASK

#if we have no task, come up with one
execute unless data entity @s data.tasks[0] run function sa_bots:bot/entity_task/_improvise_base_task

#logic based on task
function sa_bots:bot/entity_task/_task_tick_index
#----------------------------



#----------------------------
#MOVEMENT
function sa_bots:bot/movement/_movement_main
#----------------------------