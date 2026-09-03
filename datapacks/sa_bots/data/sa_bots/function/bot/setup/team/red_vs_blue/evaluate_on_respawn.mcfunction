#already have a team? check if we really want to switch
execute if data storage sa_bots:bot_data this.team \
    run return run function sa_bots:bot/setup/team/red_vs_blue/determine_if_team_switch_desired
#=====

#no team assigned? well go get one, then
execute unless data storage sa_bots:bot_data this.team \
    run function sa_bots:bot/setup/team/red_vs_blue/determine_initial_team