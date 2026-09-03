#return 1 if vaild

#feedback
particle cloud ~ ~1 ~ 0 0 0 0 1 force

#no blocks in our face
execute unless block ~ ~1 ~ #sa_bots:not_solid run return fail
#no gaps in the floor (we're being picky...)
execute if block ~ ~-1 ~ #sa_bots:not_solid_exclude_water run return fail

#else
return 1