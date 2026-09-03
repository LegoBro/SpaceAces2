#sample mission
#try ctrl+clicking through functions to get a better idea of what's happening

#----------------------
#boilerplate mission setup

#create a restore point so we aren't destructively changing user settings
function sa_bots:api/settings/restore_point/write
#remove all bots
function sa_bots:api/delete_bots/delete_all_bots
#bots can't change teams during the mission
function sa_bots:api/settings/teams_lock_all_bots
#----------------------


#mission-specific stuff

#add enemy red bots
function sa_bots:api/mission_helper/macro_create_teambound_bots {number:6,skill:5,team:2,subtract_human_players:0}

#add teammate blue bots (we want to reach a player count of 6)
function sa_bots:api/mission_helper/macro_create_teambound_bots {number:6,skill:3,team:1,subtract_human_players:1}


#after the mission is over and players are returned to the lobby, you should run
# "execute if score #restore_point_written sab.var matches 1 run function sa_bots:api/settings/restore_point/read"
# to bring back all the bot settings that players had defined beforehand