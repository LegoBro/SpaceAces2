#Commands ran every tick as entities with the tag "grenade"
scoreboard players operation @s arc = @s arcRate
execute unless entity @s[scores={arcRate=0}] run function projectile:arc

return 1