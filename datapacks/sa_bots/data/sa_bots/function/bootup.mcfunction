#executed by system on server boot or /reload


#make sure important markers exist (0,0 is forceloaded)
execute if loaded 0 0 0 run kill f-0-0-0-1
execute if loaded 0 0 0 run summon marker 0 0 0 {UUID:[I;15,0,0,1],Tags:["ignore"]}
execute if loaded 0 0 0 run kill e-0-0-0-1
execute if loaded 0 0 0 run summon marker 0 0 0 {UUID:[I;14,0,0,1],Tags:["ignore"]}

#run setup functions. (this can be commented out in prod release if you want)
function sa_bots:setup/scoreboard
function sa_bots:setup/constants
function sa_bots:setup/storages
