## Validates next gamemode (dev:gamemode gamemodes[0])
#execute unless function dev:gamemode/validate/map/team_spawns run return 0
scoreboard players set #dev.valid_mode Numbers 0
$execute if function dev:gamemode/validate/map/$(name) run scoreboard players set #dev.valid_mode Numbers 1
$execute if score #dev.valid_mode Numbers matches 1 run data modify storage dev:gamemode valid_modes append value "$(name)"
$execute unless score #dev.valid_mode Numbers matches 1 run tellraw @a {text:"$(name) is not a valid mode",color:red}
$execute if score #dev.valid_mode Numbers matches 1 run tellraw @a {text:"$(name) is a valid mode",color:green}
# Remove checked gamemode, and work on next one
data remove storage dev:gamemode gamemodes[0]
execute if data storage dev:gamemode gamemodes[0] run return run function dev:gamemode/validate/map/debug_next_mode with storage dev:gamemode gamemodes[0]
#execute if function dev:gamemode/validate/map/duel run tellraw @s ["This map can run Duel"]
#execute if function dev:gamemode/validate/map/tdm run tellraw @s ["This map can run TDM"]
