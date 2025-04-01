## Throw da sword
tp @s ^ ^ ^1
scoreboard players operation place_id id = @s id
scoreboard players add @s i 1
execute if entity @s[tag=blue] positioned ~ ~1.5 ~ as @e[distance=..2,team=red] run function class:3.4/brawler/sword_throw/damage
execute if entity @s[tag=red] positioned ~ ~1.5 ~ as @e[distance=..2,team=blue] run function class:3.4/brawler/sword_throw/damage
execute if entity @s[tag=!homing] unless block ~ ~1.5 ~ #projectile:ignore_all run function class:3.4/brawler/sword_throw/bounce
execute if score @s i matches 150.. run kill @s
execute store result entity @s Pose.Head[1] float 25.0 run scoreboard players get @s i
execute if score @s i matches 1 run data merge entity @s {Pose:{Head:[1.0f,0.0f,0.0f]}}
execute if entity @s[tag=homing] run function class:3.4/brawler/sword_throw/homing

return 1