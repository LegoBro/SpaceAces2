## New Arena only

scoreboard players reset Mission
data modify block 8 200 65 allow_op_features set value true
data modify block 8 200 65 front_text.messages[1] set value {"text":"Spectate","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/function arena:become_spectator"},"type":"text"}
data modify block 8 200 65 front_text.messages[2] set value {"text":"Mission","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/"},"type":"text"}

function gamemode:prepare with storage space_aces:selected_gamemode gamemode

schedule function arena:clear 5s

tag @e[type=marker,tag=!processed] add processed
tag @a[tag=awaiting] add in_game
tag @a[tag=awaiting] remove awaiting

#schedule function arena:load2 10s