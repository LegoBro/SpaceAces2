## Player has hit an entity
playsound minecraft:gun.hit player @s ~ ~ ~ 1 1 0
execute as @s[scores={crouching=0}] at @s positioned ~ ~1.4 ~ run particle crit ^ ^ ^1 0 0 0 0 1 force
execute as @s[scores={crouching=1}] at @s positioned ~ ~1.15 ~ run particle crit ^ ^ ^1 0 0 0 0 1 force
execute if score type_damage Numbers matches 1 run function projectile:last_shot
execute if score type_healing Numbers matches 1 run scoreboard players operation @s game_healing += healing Numbers
