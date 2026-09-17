## Validates that currently loaded map can run this mode, returns 1 if valid
execute unless function dev:gamemode/validate/map/general_spawns run return 0
execute unless entity @n[tag=capture_point,distance=..500] run return 0
return 1