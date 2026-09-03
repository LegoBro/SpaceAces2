#message saying we're starting phase 2
execute if score #nav_show_output sab.var matches 1.. run \
    tellraw @a [{translate:"sa_bot.nav_output.finished_phase_1",color:green}]

#start doing things
scoreboard players set #nav_calc_phase sab.var 1
scoreboard players set #nav_calc_sector sab.var 1
scoreboard players set #nav_calc_sector_progress sab.var 0
