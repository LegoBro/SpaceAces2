#executed by system


#output
execute if score #nav_show_output sab.var matches 1.. run \
    tellraw @a [{translate:"sa_bot.generic.name_bracket",with:[{translate:"sa_bot.nav_output.nav_output"}]}, \
        " ",{translate:"sa_bot.nav_output.finished_calculations",color:green,with:[{score:{name:"#nav_total_count",objective:"sab.var"}},{score:{name:"#nav_calc_sequence",objective:"sab.var"}}]}, \
    ]

#clear variables
scoreboard players reset #nav_calc_sequence sab.var
scoreboard players reset #nav_calc_sector sab.var
scoreboard players reset #nav_calc_sector_progress sab.var
scoreboard players reset #nav_this_tick sab.var
scoreboard players reset #nav_total_count sab.var
scoreboard players reset #nav_show_output sab.var