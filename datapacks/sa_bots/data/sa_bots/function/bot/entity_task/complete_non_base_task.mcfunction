#pop it off the stack
data remove entity @s data.tasks[0]

#remember what the last non-base task we did was
scoreboard players operation @s sab.botPreviousNonBaseTask = @s sab.botTask

#if we have another task waiting, execute on it right away
execute if data entity @s data.tasks[0] \
    if data entity @s data.tasks[0].flags{is_base_task:1} run tag @s remove sab.botDoingNonBaseTask
execute if data entity @s data.tasks[0] run return run function sa_bots:bot/entity_task/_task_tick_index
#=====

#no more tasks left? time to improvise...
function sa_bots:bot/entity_task/_improvise_base_task