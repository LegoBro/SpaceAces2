## Validates all modes
# Duplicates gamemodes list into dev
data remove storage dev:gamemode valid_modes
data modify storage dev:gamemode gamemodes set from storage space_aces:gamemodes gamemodes

function dev:gamemode/validate/map/debug_next_mode with storage dev:gamemode gamemodes[0]
#execute if function dev:gamemode/validate/map/duel run tellraw @s ["This map can run Duel"]
#execute if function dev:gamemode/validate/map/tdm run tellraw @s ["This map can run TDM"]