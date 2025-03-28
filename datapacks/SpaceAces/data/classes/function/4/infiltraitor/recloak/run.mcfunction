## Recloak on headshots
execute if entity @s[scores={last_shot=..50}] run function classes:4/infiltraitor/recloak/add

scoreboard players operation xp Numbers = @s invis
scoreboard players operation xp Numbers /= 20 Numbers
function scoreboard:score_to_xp/main

return 1