## Throw da sword
tp @s ^ ^ ^1
scoreboard players operation place_id id = @s id
scoreboard players add @s i 1
execute if entity @s[tag=blue] positioned ~ ~1.5 ~ as @e[team=red,distance=..2] run function classes:brawler/sword_throw/damage
execute if entity @s[tag=red] positioned ~ ~1.5 ~ as @e[team=blue,distance=..2] run function classes:brawler/sword_throw/damage
execute if entity @s[tag=!homing] unless block ~ ~1.5 ~ #projectile:ignore_all run function classes:brawler/sword_throw/bounce
execute if score @s i matches 150.. run kill @s
execute store result entity @s Pose.Head[1] float 25.0 run scoreboard players get @s i
execute if score @s i matches 1 run data merge entity @s {Pose:{Head:[1f,0f,0f]}}
execute if entity @s[tag=homing] run function classes:brawler/sword_throw/homing
