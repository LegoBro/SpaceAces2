# Here is where the map pools are stored for the mode, created in data to allow for custom creation later!

## How data works and is used:
# name: used to call $(name)/tick as the gamemode is running
# min_players: forces this amount of players to be playing; int
# rec_players: recommended amount of players playing; int
# max_players: no more than this amount of players can be playing; int
# needs_teams: requires players to be on both teams for this mode; boolean
# spawn: where players initially spawn; valid options are [ team, random ]
# respawn: how and where players respawn; valid options are [ none, team, random ]


data merge storage space_aces:gamemodes {\
"gamemodes":[\
    {\
        "name":"duel",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"none",\
    },\
    {\
        "name":"tdm",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
    },\
    {\
        "name":"setback",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
        "capture_time":30,\
        "start_delay":300,\
        "capture_delay":400,\
    },\
    {\
        "name":"killstreak",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
    },\
    {\
        "name":"payload",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
    },\
    {\
        "name":"escape",\
        "min_players":2,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"none",\
    },\
    {\
        "name":"lockout",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"random",\
    },\
    {\
        "name":"ctf",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"team",\
    },\
    {\
        "name":"pd",\
        "min_players":2,\
        "needs_teams":true,\
        "spawn":"team",\
        "respawn":"none",\
    },\
    {\
        "name":"aliens",\
        "min_players":2,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"team"\
    },\
    {\
        "name":"ffa",\
        "min_players":2,\
        "needs_teams":false,\
        "spawn":"team",\
        "respawn":"random",\
    }\
]}


data modify storage space_aces:selected_gamemode gamemode set from storage space_aces:gamemodes gamemode[0]