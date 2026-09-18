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

#respond to "damage" score before it gets cleared in class:4/main
execute if score @s damage matches 1.. run function sa_bots:bot/combat_logic/react/react_to_damage

#combat logic
function sa_bots:bot/combat_logic/_combat_logic_tick

#per-class logic
function sa_bots:bot/class_logic/_class_logic_index
#----------------------------



#----------------------------
#CLASS TICK

#translate sab.botRightClick10Hz into rightClick
scoreboard players remove @s[scores={sab.botRightClick10Hz=0..}] sab.botRightClick10Hz 1
execute if score @s sab.botRightClick10Hz matches 0.. run scoreboard players set @s rightClick 1

#directly run Space Aces functions
function class:4/main

#sync ult charge to storage whenever it changes
execute unless score @s sab.dUltimateCharge = @s ultimate_charge run function sa_bots:bot/storage/update_ultimate_charge
#----------------------------



#----------------------------
#MOVEMENT
function sa_bots:bot/movement/_movement_main
#----------------------------



#----------------------------
#GAME IN/OUT

#once every 2 seconds, evaluate whether we should switch teams 
execute if score #2sec sab.var matches 33..34 if entity @s[tag=sab.botMaySwitchTeams] run function sa_bots:bot/setup/team/red_vs_blue/entity_consider_switching_teams
#----------------------------