## New Arena only

scoreboard players reset Mission
function help:90d92739d1c8bd13c3fc133acf334ebd20b3dc4f4d41d2005584ef55acf47dd9

execute if score Gamemode Numbers matches 0 run function gamemode:duel/load
execute if score Gamemode Numbers matches 1 run function gamemode:tdm/load
#execute if score Gamemode Numbers matches 2 run function gamemode:setback/load
execute if score Gamemode Numbers matches 3 run function gamemode:killstreak/load
execute if score Gamemode Numbers matches 4 run function gamemode:escape/load

# Moon Base
execute if score Map Numbers matches 0 run forceload add 1087 63 960 -64

# Ruins
execute if score Map Numbers matches 1 run forceload add 3011 52 3131 -58

tag @e[type=marker,tag=!processed] add processed
tag @a[tag=awaiting] add in_game
tag @a[tag=awaiting] remove awaiting

#schedule function arena:load2 10s