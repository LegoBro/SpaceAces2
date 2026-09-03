#executed by anything

#"storage sa_bots:bot_data this" must be mapped to a bot



#no team change allowed? get outta here.
execute if data storage sa_bots:bot_data this.settings.team_choice{allow_team_change:0} run \
    return 0
#=====


#count players and bots on each team
function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue
#subtract self from team player count
execute store result score #read1 sab.var run data get storage sa_bots:bot_data this.team
execute if score #read1 sab.var matches 1 run scoreboard players remove #count_blue sab.var 1
execute if score #read1 sab.var matches 1 run scoreboard players remove #count_blue_bot sab.var 1
execute if score #read1 sab.var matches 2 run scoreboard players remove #count_red sab.var 1
execute if score #read1 sab.var matches 2 run scoreboard players remove #count_red_bot sab.var 1

#figure out what team this bot is currently on
execute store result score #read2 sab.var run data get storage sa_bots:bot_data this.team

#figure out what team this bot wants to be on
execute store result score #team sab.var run function sa_bots:bot/setup/team/red_vs_blue/bot_request_team

#random team means we don't want to switch
execute if score #team sab.var matches 3 if score #read2 sab.var matches 1..2 run return 0
#=====
#...unless we had an invalid team, in which case pick red or blue at random
execute if score #team sab.var matches 3 unless score #read2 sab.var matches 1..2 store result score #team sab.var run random value 1..2


#apply team if something changed
execute unless score #team sab.var = #read2 sab.var run function sa_bots:bot/setup/team/red_vs_blue/try_apply_team