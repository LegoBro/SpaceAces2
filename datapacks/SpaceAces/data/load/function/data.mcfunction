## Loads in necessary data for the map
# Here is where the map pools are stored for the mode, created in data to allow for custom creation later!

data merge storage space_aces:gamemodes {\
"index":0,\
"name":duel,\
"min_players":2,\
"rec_players":6,\
"max_players":100,\
"gamemodes":[\
    {\
        "name":"duel",\
        "min_players":2\
    },\
    {\
        "name":"tdm",\
        "min_players":2\
    },\
    {\
        "name":"setback",\
        "min_players":2\
    },\
    {\
        "name":"killstreak",\
        "min_players":2\
    },\
    {\
        "name":"escape",\
        "min_players":2\
    },\
    {\
        "name":"payload",\
        "min_players":2\
    },\
    {\
        "name":"lockout",\
        "min_players":2\
    },\
    {\
        "name":"ctf",\
        "min_players":2\
    },\
    {\
        "name":"pd",\
        "min_players":2\
    },\
    {\
        "name":"aliens",\
        "min_players":2\
    },\
    {\
        "name":"ffa",\
        "min_players":2\
    }\
]}

data merge storage space_aces:maps {\
    "duel": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ],\
    "tdm": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ],\
    "setback": [\
        "frigate"\
    ],\
    "killstreak": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ],\
    "escape": [\
    ],\
    "payload": [\
        "gray_caves"\
    ],\
    "lockout": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ],\
    "ctf": [\
        "ruins"\
    ],\
    "pd": [\
        "moon_base"\
    ],\
    "aliens": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ],\
    "ffa": [\
        "moon_base",\
        "penal_colony",\
        "ruins",\
        "frigate"\
    ]\
}
