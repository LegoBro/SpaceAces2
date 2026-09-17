# Loads maps available to each gamemode
## Delete array
data remove storage dev:gamemode mapped_gamemodes
## Copy gamemodes over
data modify storage dev:gamemode gamemodes set from storage space_aces:gamemodes gamemodes
function dev:gamemode/next_mode with storage dev:gamemode gamemodes[0]