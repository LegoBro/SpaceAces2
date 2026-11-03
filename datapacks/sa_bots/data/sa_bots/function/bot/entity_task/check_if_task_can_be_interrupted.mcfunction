#executed by bot entity

#clean up the tag that made us consider doing this
tag @s remove sab.botMustPickNewTask


#don't allow us to do a thing if our current task can't be interrupted
execute if data entity @s data.tasks[0].flags{cannot_interrupt:1} run return fail

#otherwise ok
return 1