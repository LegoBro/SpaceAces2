## Weather objective
scoreboard objectives add weather.speed dummy
scoreboard objectives add weather.size dummy
scoreboard objectives add weather.timer dummy
scoreboard objectives add weather.lifespan dummy
scoreboard objectives add weather.density dummy

execute as @e[type=marker,tag=weather.cloud_emitter] run function weather:cloud_emitter/calculate

scoreboard players set #map_size weather.size 160

#Format:

data merge storage weather:cloud_emitter \
    {default:{\
        radius_x: 64,\
        radius_y: 3,\
        radius_z: 1,\
        delay_min: 60,\
        delay_max: 200,\
        density: 2,\
        group_limits:{\
            spread_x: 15,\
            spread_y: 8,\
            spread_z: 15,\
        },\
        cloud:{\
            size:2,\
            speed:2,\
            model:"arena/ruins/sky_poison",\
        }\
    }} 