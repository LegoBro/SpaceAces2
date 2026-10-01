## Applies checkpoint logic
execute unless data entity @s data.gamemode.payload.path.previous[0] run return run function dev:gamemode/payload/checkpoint/start

execute unless data entity @s data.gamemode.payload.path.next[0] run return run function dev:gamemode/payload/checkpoint/end

## Toggle checkpoint
execute if entity @s[tag=gamemode.payload.checkpoint] run return run tag @s remove gamemode.payload.checkpoint

return run tag @s add gamemode.payload.checkpoint