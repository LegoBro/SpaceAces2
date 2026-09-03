$scoreboard players set #create_recursions sab.var $(count)

#argument can't be higher than max bot count
execute if score #create_recursions sab.var > #MAX_BOT_COUNT sab.var run scoreboard players operation #create_recursions sab.var = #MAX_BOT_COUNT sab.var
#(this isn't party pooping, this just saves time since it isn't going to create beyond the max count anyways)

#also must be > 0, otherwise kick out
execute unless score #create_recursions sab.var matches 1.. run return run scoreboard players reset #create_recursions sab.var
#=====


#ok now start adding
function sa_bots:api/create_bots/create_1_bot