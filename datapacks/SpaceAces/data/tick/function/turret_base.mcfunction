#Commands ran every tick as entities with the tag "turret_base"
execute if entity @s[tag=!prepared] run function classes:mechanic/turret/prepare_base
function classes:mechanic/turret/health

return 1