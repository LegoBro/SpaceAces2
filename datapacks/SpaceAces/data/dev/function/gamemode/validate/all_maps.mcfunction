## Validates all maps (updates map list)
tellraw @a {"text":"The maps are being validated, please do not load any map until finished!"}
tp @a 8 200 8
data remove storage dev:gamemode valid_modes
data remove storage dev:maps fixed_maps
data modify storage dev:maps maps set from storage space_aces:maps maps
function dev:gamemode/validate/load_next_map with storage dev:maps maps[0]