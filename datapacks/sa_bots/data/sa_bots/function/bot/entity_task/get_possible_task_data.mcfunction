#generate a task that will be prepended to the bot's data.tasks[]

#notes:
# - data.tasks acts like a stack, with the most immediate task being at index [0]
# - bots can only ever have 1 task in their stack that has "is_base_task:1"
#       > conflicts between base tasks will be resolved based on "priority"
# - "is_base_task:0" tasks can be stacked with no issue, but future ones might not be assigned if the stack is too long
# - if we change base tasks, that will likely mean we clear out "data.destinations[]"

execute if score #choice sab.var matches ..0 run data modify storage sa_bots:generic new_task set value {id:0,name:"RANDOM_DESTINATION",is_base_task:1,flags:{is_base_task:1,priority:0}}
execute if score #choice sab.var matches 1 run data modify storage sa_bots:generic new_task set value {id:1,name:"FIND_NEAREST_ENEMY",is_base_task:1,flags:{is_base_task:1,priority:11}}
execute if score #choice sab.var matches 2 run data modify storage sa_bots:generic new_task set value {id:2,name:"FIND_SPECIFIC_ENEMY",is_base_task:1,flags:{is_base_task:1,priority:12}}
execute if score #choice sab.var matches 3 run data modify storage sa_bots:generic new_task set value {id:3,name:"FIND_NEAREST_TEAMMATE",is_base_task:1,flags:{is_base_task:1,priority:21}}
execute if score #choice sab.var matches 4 run data modify storage sa_bots:generic new_task set value {id:4,name:"FIND_SPECIFIC_TEAMMATE",is_base_task:1,flags:{is_base_task:1,priority:22}}
execute if score #choice sab.var matches 5 run data modify storage sa_bots:generic new_task set value {id:5,name:"FIND_HEALING",is_base_task:0,flags:{is_base_task:0,priority:30}}
execute if score #choice sab.var matches 6 run data modify storage sa_bots:generic new_task set value {id:6,name:"GO_TO_PATROL_POINT",is_base_task:1,flags:{is_base_task:1,priority:4}}
execute if score #choice sab.var matches 7 run data modify storage sa_bots:generic new_task set value {id:7,name:"GO_TO_SNIPER_SPOT",is_base_task:0,flags:{is_base_task:0,priority:5}}
execute if score #choice sab.var matches 8 run data modify storage sa_bots:generic new_task set value {id:8,name:"GO_TO_TURRET_SPOT",is_base_task:1,flags:{is_base_task:1,priority:20}}
execute if score #choice sab.var matches 9 run data modify storage sa_bots:generic new_task set value {id:9,name:"RANDOM_DESTINATION_BLUE",is_base_task:1,flags:{is_base_task:1,priority:2}}
execute if score #choice sab.var matches 10 run data modify storage sa_bots:generic new_task set value {id:10,name:"RANDOM_DESTINATION_RED",is_base_task:1,flags:{is_base_task:1,priority:2}}
execute if score #choice sab.var matches 11 run data modify storage sa_bots:generic new_task set value {id:11,name:"FIND_UNOCCUPIED_SECTOR",is_base_task:1,flags:{is_base_task:1,priority:1}}
execute if score #choice sab.var matches 12 run data modify storage sa_bots:generic new_task set value {id:12,name:"FRONT_LINE_BLUE",is_base_task:1,flags:{is_base_task:1,priority:13}}
execute if score #choice sab.var matches 13 run data modify storage sa_bots:generic new_task set value {id:13,name:"FRONT_LINE_RED",is_base_task:1,flags:{is_base_task:1,priority:13}}
execute if score #choice sab.var matches 14.. run data modify storage sa_bots:generic new_task set value {id:14,name:"RANDOM_WITHIN_SECTOR",is_base_task:1,flags:{is_base_task:1,priority:3}}
