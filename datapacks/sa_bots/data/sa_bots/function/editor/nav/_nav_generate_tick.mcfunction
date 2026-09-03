#do nav calculations
scoreboard players operation #nav_recursions sab.var = #NAV_GENERATION_SPEED sab.var
function sa_bots:editor/nav/_calc_cycle

#count how many ticks this has been going on
execute if score #nav_calc_sequence sab.var matches 1.. run scoreboard players add #nav_calc_sequence sab.var 1