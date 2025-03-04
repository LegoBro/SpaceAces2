## New Arena only

scoreboard players reset Mission
function help:90d92739d1c8bd13c3fc133acf334ebd20b3dc4f4d41d2005584ef55acf47dd9

function gamemode:prepare with storage space_aces:gamemodes



schedule function arena:clear 5s

tag @e[type=marker,tag=!processed] add processed
tag @a[tag=awaiting] add in_game
tag @a[tag=awaiting] remove awaiting

#schedule function arena:load2 10s