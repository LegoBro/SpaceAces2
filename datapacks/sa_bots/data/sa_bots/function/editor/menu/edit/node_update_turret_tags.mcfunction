#meta-tag for turret stuff
tag @s remove wp.turretRelevant
tag @s remove wp.turretRelevant.blue
tag @s remove wp.turretRelevant.red

execute if entity @s[tag=wp.turretSpot] run tag @s add wp.turretRelevant
execute if entity @s[tag=wp.turretSpot.blue] run tag @s add wp.turretRelevant.blue
execute if entity @s[tag=wp.turretSpot.red] run tag @s add wp.turretRelevant.red

execute if entity @s[tag=wp.leadsToTurretSpot] run tag @s add wp.turretRelevant
execute if entity @s[tag=wp.leadsToTurretSpot.blue] run tag @s add wp.turretRelevant.blue
execute if entity @s[tag=wp.leadsToTurretSpot.red] run tag @s add wp.turretRelevant.red
