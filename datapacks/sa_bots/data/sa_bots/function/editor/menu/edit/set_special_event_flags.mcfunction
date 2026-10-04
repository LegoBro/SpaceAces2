#executed by a waypoint

tag @s remove wp.checkEventNotBlocked
execute if data entity @s data.outgoing[][2][1].flags{require_not_blocked:1} run tag @s add wp.checkEventNotBlocked