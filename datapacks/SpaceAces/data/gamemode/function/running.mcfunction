# Simply runs the gamemode in storage (should be able to make more in future easily)

scoreboard players add current_game_time benchmark 1
scoreboard players add @a[tag=in_game] stat.game.play_time 1

$function gamemode:$(name)/tick
# Handle player death
execute as @e[type=#projectile:players,tag=hb,scores={health=..0}] at @s run scoreboard players add @s stat.game.deaths 1
$execute as @e[type=#projectile:players,tag=hb,scores={health=..0}] at @s run function gamemode:$(name)/death
#$execute as @e[type=mannequin,tag=hb,scores={timeSinceLastRespawn=1}] at @s run function gamemode:$(name)/death