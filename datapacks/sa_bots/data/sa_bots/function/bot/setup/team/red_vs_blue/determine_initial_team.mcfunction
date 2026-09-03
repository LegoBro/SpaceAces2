#executed by anything

#"storage sa_bots:bot_data this" must be mapped to a bot



#count players and bots on each team
function sa_bots:bot/utility/count_players_and_bots_on_red_and_blue

#figure out what team this bot wants to be on
execute store result score #team sab.var run function sa_bots:bot/setup/team/red_vs_blue/bot_request_team

#random team becomes 1 or 2 (red or blue)
execute if score #team sab.var matches 3 store result score #team sab.var run random value 1..2

#apply team
function sa_bots:bot/setup/team/red_vs_blue/try_apply_team