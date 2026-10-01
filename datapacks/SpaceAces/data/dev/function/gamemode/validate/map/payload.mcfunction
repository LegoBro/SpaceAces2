## Validates that currently loaded map can run this mode, returns 1 if valid
return 0
execute unless entity @n[type=marker,tag=gamemode.payload.path,tag=gamemode.payload.start] run return 0
execute unless entity @n[type=marker,tag=gamemode.payload.path,tag=gamemode.payload.end] run return 0
execute unless function dev:gamemode/validate/map/team_spawns run return 0
return 1