#executed by a bot when they have nothing else to do

#figure out what we're supposed to be doing based on
#1. current game type (ctf, payload, etc)
#2. our current goal (sab.botGoal: PUSH, DEFEND, or PICK)
#3. information about the game state (where friendlies or enemies are, which team has influence in each sector)


#remember what the last task we did was (if it exists)
scoreboard players set @s sab.botPreviousTask -1
execute if score @s sab.botTask matches 0.. run scoreboard players operation @s sab.botPreviousTask = @s sab.botTask


#setup data structure
data modify entity @s data.tasks set value []


#fallback: pick random waypoint
scoreboard players set #choice sab.var 0
#logic based on game type (these aren't directly tied to Space Aces gamemodes storage. various modes can get lumped into one archetype if similar enough)
execute if score #bot_objective sab.var matches 1 run function sa_bots:bot/entity_task/improvise/1_basic_teams/_index
execute if score #bot_objective sab.var matches 2 run function sa_bots:bot/entity_task/improvise/2_limited_lives/_index
execute if score #bot_objective sab.var matches 3 run function sa_bots:bot/entity_task/improvise/3_3_control_point/_index
execute if score #bot_objective sab.var matches 4 run function sa_bots:bot/entity_task/improvise/4_payload/_index
execute if score #bot_objective sab.var matches 5 run function sa_bots:bot/entity_task/improvise/5_ctf/_index
execute if score #bot_objective sab.var matches 6 run function sa_bots:bot/entity_task/improvise/6_ffa/_index

#index, assign task
function sa_bots:bot/entity_task/get_possible_task_data
#adopt task with no question since we know there's only 1
data modify entity @s data.tasks prepend from storage sa_bots:generic new_task

#internalize whatever task 0 is
execute store result score @s sab.botTask run data get entity @s data.tasks[0].id