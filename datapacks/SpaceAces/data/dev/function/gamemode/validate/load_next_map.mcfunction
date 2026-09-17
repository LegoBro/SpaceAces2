## Validates next map (dev:maps maps[0])

# Teleport to map center
forceload remove all

# Forceload whole map area, roughly 500x500
$execute positioned $(center) run forceload add ~-240 ~-240 ~-1 ~-1
$execute positioned $(center) run forceload add ~240 ~-240 ~1 ~-1
$execute positioned $(center) run forceload add ~-240 ~240 ~-1 ~1
$execute positioned $(center) run forceload add ~240 ~240 ~1 ~1


schedule function dev:gamemode/validate/await 10s

# Remove checked map, and work on next one
#data remove storage dev:gamemode gamemodes[0]
#execute if data storage dev:gamemode gamemodes[0] run return run function dev:gamemode/validate/map/debug_next_mode with storage dev:gamemode gamemodes[0]

