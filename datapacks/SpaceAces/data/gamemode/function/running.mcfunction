# Simply runs the gamemode in storage (should be able to make more in future easily)
$function gamemode:$(name)/tick
# Handle player death
$execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:$(name)/death