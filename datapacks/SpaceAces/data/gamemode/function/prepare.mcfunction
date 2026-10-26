# Simply runs the gamemode in storage (should be able to make more in future easily)
$function gamemode:$(name)/load

# Force players ready:
tag @a[tag=awaiting] add ready

## Load in Bots 
execute store result score #add_bot_amount Numbers run data get storage space_aces:selected_gamemode gamemode.rec_players

execute store result score #player_count Numbers if entity @a[tag=ready]

scoreboard players operation #add_bot_amount Numbers -= #player_count Numbers

execute store result storage space_aces:selected_gamemode bots.count int 1 run scoreboard players get #add_bot_amount Numbers

function sa_bots:api/create_bots/count_macro_create_bots with storage space_aces:selected_gamemode bots

function sa_bots:api/round_setup/_all

function sa_bots:api/activation/deactivate_all_bots