## Force starts the gamemode, making sure to autofill the lobby with bots
scoreboard players set Mission Numbers 0
scoreboard players set Prestart Numbers 0
tag @a[tag=awaiting] add ready
function gamemode:launch_game