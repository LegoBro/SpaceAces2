# Same lastHurter as attacker
execute if score @s lastHurter = place_id id run return 0

# New lasthurter and nextLastHurter
scoreboard players operation @s nextLastHurter = @s lastHurter
scoreboard players operation @s lastHurter = place_id id
