#executed by system


#make sure storage is ready to go
execute store result storage sa_bots:waypoint nav_index int 1 run scoreboard players get #nav_calc_sector sab.var

#-------------------------
#party time

#first tick, do make sure everything is reset
execute if score #nav_calc_sector_progress sab.var matches 0 run function sa_bots:editor/nav/sector_first_tick with storage sa_bots:waypoint

#run calculations on marked nodes
scoreboard players reset * sab.navCalcNextTick
scoreboard players set #nav_this_tick sab.var 0
execute if score #nav_calc_phase sab.var matches 0 run data modify storage sa_bots:waypoint command set value "function sa_bots:editor/nav/evaluate_waypoint with storage sa_bots:waypoint"
execute if score #nav_calc_phase sab.var matches 1 run data modify storage sa_bots:waypoint command set value "function sa_bots:editor/nav/evaluate_waypoint_unconditional with storage sa_bots:waypoint"
execute if score #nav_calc_phase sab.var matches 0 as @e[type=marker,tag=sab.nav_calc_next_tick] run function sa_bots:editor/nav/node_check_incoming
execute if score #nav_calc_phase sab.var matches 1 as @e[type=marker,tag=sab.nav_calc_next_tick] run function sa_bots:editor/nav/node_check_incoming_unconditional

#output
execute if score #nav_show_output sab.var matches 2.. if score #nav_calc_sector_progress sab.var matches 1.. run \
    tellraw @a [{translate:"sa_bot.generic.name_bracket",with:[{translate:"sa_bot.nav_output.nav_output"}]}, \
        " ",{translate:"sa_bot.nav_output.sector_n",color:yellow,with:[{score:{name:"#nav_calc_sector",objective:"sab.var"}}]}, \
        " -- ",{translate:"sa_bot.nav_output.calculated_distance_for_n_nodes",with:[{score:{name:"#nav_calc_sector_progress",objective:"sab.var"}}]} \
    ]

#nothing happened? finalize the current sector
execute if score #nav_this_tick sab.var matches 0 run function sa_bots:editor/nav/sector_final_tick
#-------------------------


#repeat as many times as requested
scoreboard players remove #nav_recursions sab.var 1
execute if score #nav_recursions sab.var matches 1.. if score #nav_calc_sector sab.var matches 1.. run function sa_bots:editor/nav/_calc_cycle