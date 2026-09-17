#huge hex map for uuid conversion
execute unless data storage uuid:rom hex run function sa_uuid4:load


#----------------------------
#EDITOR

#bot waypoint name template
data modify storage sa_bots:waypoint name set value [{text:"wp:",color:"#FF0000"},{text:"asdf",color:"#FF0000"}]

#sector name template
data modify storage sa_bots:waypoint sector_name set value ["sector","asdf"]

#don't un-comment this unless your world is completely free of bot waypoints...
#data modify storage sa_bots:waypoint next_uuid4 set value 0
#----------------------------


#----------------------------
#BOTS

#bot usernames
function sa_bots:setup/bots/profiles

#bot default settings
function sa_bots:setup/bots/default_bot_settings

#team compositon
execute unless data storage sa_bots:team_composition root run function sa_bots:setup/bots/team_composition

#bot starting gameplay variables
function sa_bots:bot/storage/define_starting_game_variables

#----------------------------