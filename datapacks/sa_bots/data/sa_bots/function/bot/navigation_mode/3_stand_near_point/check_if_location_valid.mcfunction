#must have solid ground beneath us
execute if block ~ ~-1 ~ #sa_bots:not_solid_exclude_water if block ~ ~-2 ~ #sa_bots:not_solid_exclude_water run return fail
#=====

#must have space above us
execute if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run return 1
return fail