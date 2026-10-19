## Validates next map (dev:maps maps[0])
tellraw @a ""
$tellraw @a [{text:"Validating: ",color: light_purple},{text:"$(name)",color: dark_purple}]

function dev:gamemode/validate/map/debug_all_modes
data modify storage dev:maps maps[0].gamemodes set from storage dev:gamemode valid_modes

data modify storage dev:maps fixed_maps append from storage dev:maps maps[0]

# Remove checked map, and work on next one
data remove storage dev:maps maps[0]
execute as @a at @s run playsound minecraft:block.note_block.banjo
execute if data storage dev:maps maps[0] run return run function dev:gamemode/validate/load_next_map with storage dev:maps maps[0]

## Once array is complete, copy back to the main space_aces:maps storage

data modify storage space_aces:maps maps set from storage dev:maps fixed_maps
tellraw @a {"text":"Map Validation Complete!"}
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 2