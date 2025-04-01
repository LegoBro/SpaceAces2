#Commands ran every tick as entities with the tag "turret_base"
execute if entity @s[tag=!prepared] run function class:mechanic/turret/prepare_base
function class:mechanic/turret/health

return 1