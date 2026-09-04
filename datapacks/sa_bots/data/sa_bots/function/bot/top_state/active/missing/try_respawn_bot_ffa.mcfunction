#figure out what team this bot will be on
function sa_bots:bot/setup/team/ffa/get_unique_team


#execute at a general_spawn_point
execute at @e[type=marker,tag=general_spawn_point,limit=1,sort=random] if loaded ~ ~ ~ run function sa_bots:bot/setup/spawn_mannequin with storage sa_bots:generic