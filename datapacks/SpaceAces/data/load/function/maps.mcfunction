data merge storage space_aces:maps {\
    "maps":[\
        {\
            "name":"moon_base",\
            "player_count":[1,12],\
            "center":"1023 100 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"penal_colony",\
            "player_count":[1,8],\
            "center":"2047 100 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"ruins",\
            "player_count":[1,16],\
            "center":"3071 100 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"frigate",\
            "player_count":[1,24],\
            "center":"4095 100 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"magma_forge",\
            "player_count":[1,32],\
            "center":"13311 100 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"snow_bowl",\
            "player_count":[1,32],\
            "center":"16383 99 0",\
            "gamemodes":[]\
        },\
        {\
            "name":"gray_caves",\
            "player_count":[1,32],\
            "center":"11263 99 0",\
            "gamemodes":[]\
        },\
    ]\
}

data modify storage space_aces:selected_map map set from storage space_aces:maps maps[0]