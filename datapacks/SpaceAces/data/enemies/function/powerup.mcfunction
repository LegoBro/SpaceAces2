tp @s ~ ~ ~ ~5 ~
execute if entity @s[tag=speed] as @p[distance=..1,team=blue] unless entity @s[tag=speed_3] run function enemies:powerup/speed
execute if entity @s[tag=damage] as @p[distance=..1,team=blue] unless entity @s[tag=damage_3] run function enemies:powerup/damage
execute if entity @s[tag=energy] as @p[distance=..1,team=blue] unless entity @s[tag=energy_3] run function enemies:powerup/energy
execute if entity @s[tag=aura] as @p[distance=..1,team=blue] unless entity @s[tag=aura_3] run function enemies:powerup/aura
execute if entity @s[tag=reload] as @p[distance=..1,team=blue] unless entity @s[tag=reload_3] run function enemies:powerup/reload

return 1