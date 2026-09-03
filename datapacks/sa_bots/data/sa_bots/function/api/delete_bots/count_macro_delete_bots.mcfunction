$scoreboard players set #delete_recursions sab.var $(count)

#also must be > 0, otherwise kick out
execute unless score #delete_recursions sab.var matches 1.. run return run scoreboard players reset #delete_recursions sab.var
#=====


#ok now start adding
function sa_bots:api/delete_bots/delete_newest_bot