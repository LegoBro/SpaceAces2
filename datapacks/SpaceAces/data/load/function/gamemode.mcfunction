# Here is where the map pools are stored for the mode, created in data to allow for custom creation later!

## How data works and is used:
# name: used to call $(name)/tick as the gamemode is running
# min_players: forces this amount of players to be playing; int
# rec_players: recommended amount of players playing; int
# max_players: no more than this amount of players can be playing; int
# needs_teams: requires players to be on both teams for this mode; boolean
# spawn: where players initially spawn; valid options are [ team, random ]
# respawn: how and where players respawn; valid options are [ none, team, random ]
# bot_strategy: defines how bots should behave [ basic_team_fighting, limited_lives_team_fighting, 3_control_point, payload, ctf, ffa ]


data merge storage space_aces:gamemodes {\
"gamemodes":[\
    {\
        "name":"duel",\
        "min_players":2,\
        "rec_players":6,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"none",\
        "bot_strategy":"limited_lives_team_fighting",\
    },\
    {\
        "name":"tdm",\
        "min_players":2,\
        "rec_players":8,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
        "bot_strategy":"basic_team_fighting",\
    },\
    {\
        "name":"setback",\
        "min_players":2,\
        "rec_players":10,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
        "capture_time":500,\
        "goal_points":7,\
        "start_delay":300,\
        "capture_delay":400,\
        "bot_strategy":"3_control_point",\
    },\
    {\
        "name":"killstreak",\
        "min_players":2,\
        "rec_players":6,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
        "bot_strategy":"basic_team_fighting",\
    },\
    {\
        "name":"payload",\
        "min_players":2,\
        "rec_players":10,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
        "ignore":false,\
        "bot_strategy":"payload",\
    },\
    {\
        "name":"escape",\
        "min_players":1,\
        "rec_players":2,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"none",\
        "ignore":true,\
        "bot_strategy":"none",\
    },\
    {\
        "name":"lockout",\
        "min_players":2,\
        "rec_players":6,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
        "ignore":true,\
        "bot_strategy":"limited_lives_team_fighting",\
    },\
    {\
        "name":"ctf",\
        "min_players":2,\
        "rec_players":8,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
        "ignore":true,\
        "bot_strategy":"ctf",\
    },\
    {\
        "name":"pd",\
        "min_players":2,\
        "rec_players":12,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"none",\
        "ignore":true,\
        "bot_strategy":"basic_team_fighting",\
    },\
    {\
        "name":"aliens",\
        "min_players":2,\
        "rec_players":16,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"team",\
        "ignore":true,\
        "bot_strategy":"limited_lives_team_fighting",\
    },\
    {\
        "name":"ffa",\
        "min_players":2,\
        "rec_players":8,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"random",\
        "ignore":true,\
        "bot_strategy":"ffa",\
    }\
]}

## Also Verify Maps 
function dev:gamemode/load_maps

## Finally Copy things over
data modify storage space_aces:selected_gamemode gamemode set from storage space_aces:gamemodes gamemode[0]

