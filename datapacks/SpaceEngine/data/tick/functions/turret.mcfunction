#Commands ran every tick as entities with the tag "turret"
execute if entity @s[tag=!prepared] run function classes:mechanic/turret/prepare
execute if entity @s[tag=prepared] run function classes:mechanic/turret/standby
