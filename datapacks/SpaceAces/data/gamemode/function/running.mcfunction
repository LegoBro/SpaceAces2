# Simply runs the gamemode in storage (should be able to make more in future easily)
$function gamemode:$(name)/tick
# Handle player death
$execute as @e[type=#projectile:players,tag=hb,scores={health=..0}] at @s run function gamemode:$(name)/death
#$execute as @e[type=mannequin,tag=hb,scores={timeSinceLastRespawn=1}] at @s run function gamemode:$(name)/death