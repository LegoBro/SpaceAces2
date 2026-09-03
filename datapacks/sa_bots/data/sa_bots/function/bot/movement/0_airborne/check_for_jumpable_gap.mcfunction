#executed at f-0-0-0-1 (the vector of what direction we're moving in)
#only performed on first airborne tick after being grounded


#1-block gap
execute if block ~ ~-1.2 ~ #sa_bots:not_solid \
    positioned ^ ^ ^1.1 unless block ~ ~-.4 ~ #sa_bots:not_solid if block ~ ~1.6 ~ #sa_bots:not_solid \
    run return run function sa_bots:bot/movement/jump/_perform_jump
#=====

#1-block gap ascending
execute if block ~ ~-.2 ~ #sa_bots:not_solid \
    positioned ^ ^ ^1.1 unless block ~ ~-.4 ~ #sa_bots:not_solid if block ~ ~1.6 ~ #sa_bots:not_solid \
    run return run function sa_bots:bot/movement/jump/_perform_jump
#=====

#2-block gap
execute if block ~ ~-1.2 ~ #sa_bots:not_solid \
    positioned ^ ^ ^1.1 if block ~ ~.6 ~ #sa_bots:not_solid if block ~ ~1.6 ~ #sa_bots:not_solid \
    positioned ^ ^ ^1 unless block ~ ~-.4 ~ #sa_bots:not_solid if block ~ ~.6 ~ #sa_bots:not_solid if block ~ ~1.6 ~ #sa_bots:not_solid \
    run return run function sa_bots:bot/movement/jump/_perform_jump