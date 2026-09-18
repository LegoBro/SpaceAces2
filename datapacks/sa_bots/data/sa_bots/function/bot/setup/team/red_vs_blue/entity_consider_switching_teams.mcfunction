#executed by bot entity every 2 seconds


#switch to the other team if our current team is 2+ members larger than the other
scoreboard players operation #var sab.var = #count_blue sab.var
scoreboard players operation #var sab.var -= #count_red sab.var

execute if score @s Team matches 1 unless score #var sab.var matches 2.. run return fail
execute if score @s Team matches 2 unless score #var sab.var matches ..-2 run return fail
#=====

#if we made it here, we are switching teams
execute if score @s Team matches 1 run data modify storage sa_bots:generic team set value 2
execute if score @s Team matches 2 run data modify storage sa_bots:generic team set value 1
function sa_bots:bot/setup/team/red_vs_blue/entity_switch_teams with storage sa_bots:generic

#update count
function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue