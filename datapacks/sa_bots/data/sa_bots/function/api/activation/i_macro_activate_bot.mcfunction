#executed by anything (probably system)

#arguments
#$(i) -- index of bot to deactivate


$data modify storage sa_bots:bot_data bots[$(i)].active set value 1

#bots will use "spawn" logic on first spawn, then "respawn" for each subsequent
$data modify storage sa_bots:bot_data bots[$(i)].first_spawn set value 1