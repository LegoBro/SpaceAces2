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
#SHOOTING / COMBAT

#combat logic
function sa_bots:bot/combat_logic/_combat_logic_tick

#per-class logic
function sa_bots:bot/class_logic/_class_logic_index
#----------------------------



#----------------------------
#CLASS TICK

#directly run Space Aces functions
function sa_bots:bot/class_logic/_class_tick_index

#sync ult charge to storage whenever it changes
execute unless score @s sab.dUltimateCharge = @s ultimate_charge run function sa_bots:bot/storage/update_ultimate_charge
#----------------------------



#----------------------------
#MOVEMENT
function sa_bots:bot/movement/_movement_main
#----------------------------