#must have solid ground beneath us
execute if block ~ ~-1 ~ #sa_bots:bot_avoid_standing_on if block ~ ~-2 ~ #sa_bots:bot_avoid_standing_on run return fail
#=====

#must have space above us (and not be pressed right against a wall)
execute if block ~ ~1 ~ #sa_bots:not_solid if block ~ ~2 ~ #sa_bots:not_solid run return 1
return fail