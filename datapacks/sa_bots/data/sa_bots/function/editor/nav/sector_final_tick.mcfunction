#executed by system


#reset calc objective
scoreboard players reset * sab.navCalc
scoreboard players reset * sab.navCalcNextTick

#reset progress var
scoreboard players set #nav_calc_sector_progress sab.var 0

#reset or keep going?
#depends if we told the system to do all sectors or not
execute if score #nav_calc_sequence sab.var matches 1.. run scoreboard players add #nav_calc_sector sab.var 1
execute unless score #nav_calc_sequence sab.var matches 1.. run scoreboard players reset #nav_calc_sector sab.var

#next phase?
execute if score #nav_calc_sequence sab.var matches 1.. if score #nav_calc_sector sab.var matches 17.. if score #nav_calc_phase sab.var matches 0 run function sa_bots:editor/nav/_start_second_phase
#=====

#end at the end
execute if score #nav_calc_sequence sab.var matches 1.. if score #nav_calc_sector sab.var matches 17.. run function sa_bots:editor/nav/_finish_all_nav