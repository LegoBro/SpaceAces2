

data remove storage dev:gamemode gamemodes[0].maps
## Copy all maps, to iterate over
data modify storage dev:maps maps set from storage space_aces:maps maps

$tellraw @s {text:"Checking mode: $(name)",color:light_purple}
function dev:gamemode/next_map with storage dev:gamemode gamemodes[0]

# Add gamemode back to finalized array
data modify storage dev:gamemode mapped_gamemodes append from storage dev:gamemode gamemodes[0]
# Remove checked gamemode, and work on next one
data remove storage dev:gamemode gamemodes[0]
execute if data storage dev:gamemode gamemodes[0] run return run function dev:gamemode/next_mode with storage dev:gamemode gamemodes[0]

## Copy all mapped gamemodes back
data modify storage space_aces:gamemodes gamemodes set from storage dev:gamemode mapped_gamemodes
## Also copy back the first gamemode, to automatically set up the 
data modify storage space_aces:selected_gamemode gamemode set from storage space_aces:gamemodes gamemodes[0]
function gamemode:cycle_map