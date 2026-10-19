#meta-tag for sniper stuff
tag @s remove wp.sniperRelevant
tag @s remove wp.sniperRelevant.blue
tag @s remove wp.sniperRelevant.red

execute if entity @s[tag=wp.sniperSpot] run tag @s add wp.sniperRelevant
execute if entity @s[tag=wp.sniperSpot.blue] run tag @s add wp.sniperRelevant.blue
execute if entity @s[tag=wp.sniperSpot.red] run tag @s add wp.sniperRelevant.red

execute if entity @s[tag=wp.leadsToSniperSpot] run tag @s add wp.sniperRelevant
execute if entity @s[tag=wp.leadsToSniperSpot.blue] run tag @s add wp.sniperRelevant.blue
execute if entity @s[tag=wp.leadsToSniperSpot.red] run tag @s add wp.sniperRelevant.red
