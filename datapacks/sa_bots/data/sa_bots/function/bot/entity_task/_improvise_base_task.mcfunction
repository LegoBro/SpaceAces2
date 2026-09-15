#executed by a bot when they have nothing else to do

#figure out what we're supposed to be doing based on
#1. current game type (ctf, payload, etc)
#2. our current class
#3. information about the game state (where friendlies or enemies are, what our team composition is, etc)


#setup data structure
data modify entity @s data.tasks set value []


#fallback: pick random waypoint
scoreboard players set #choice sab.var 0
#go after enemy players
#execute if entity @e[tag=sab.activePlayer,distance=2..] run scoreboard players set #choice sab.var 1

#index, assign task
execute if score #choice sab.var matches 0 run data modify entity @s data.tasks prepend value {id:0,name:"RANDOM_DESTINATION",is_base_task:1,flags:{is_base_task:1}}
execute if score #choice sab.var matches 1 run data modify entity @s data.tasks prepend value {id:1,name:"FIND_NEAREST_ENEMY",is_base_task:1,flags:{is_base_task:1}}
#...


#internalize whatever task 0 is
execute store result score @s sab.botTask run data get entity @s data.tasks[0].id