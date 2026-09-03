#executed by anything

#"storage sa_bots:bot_data this" must be mapped to a bot

#"#team sab.var" should be 1 or 2 before running this (1 = blue, 2 = red)
#"function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue" must be run before this function



#this warrants an update, later
data modify storage sa_bots:bot_data this.updateOrigin set value 1


#if we bypass team restrictions, just straight up pick the team we want
execute if data storage sa_bots:bot_data this.settings.team_choice{bypass_team_restrictions:1} run \
    return run execute store result storage sa_bots:bot_data this.team int 1 run scoreboard players get #team sab.var
#=====


#otherwise, we can only join a team if it's not bigger than the other

#if we requested blue but the team is restricted, pick red
execute if score #team sab.var matches 1 if score #count_blue sab.var > #count_red sab.var run scoreboard players set #team sab.var 2

#if we requested red but the team is restricted, pick blue
execute if score #team sab.var matches 2 if score #count_red sab.var > #count_blue sab.var run scoreboard players set #team sab.var 1

#now pick the team
execute store result storage sa_bots:bot_data this.team int 1 run scoreboard players get #team sab.var