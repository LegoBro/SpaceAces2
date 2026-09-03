#executed by anything (probably system)

#arguments
#$(i) -- index of bot to deactivate


$data modify storage sa_bots:bot_data bots[$(i)].active set value 2