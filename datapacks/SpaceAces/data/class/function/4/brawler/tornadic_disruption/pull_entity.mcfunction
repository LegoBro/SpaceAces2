
execute if score @s Team = #team Team run return 1
scoreboard players operation @s damage += damage Numbers
execute as @p[tag=target.owner] at @s run function projectile:hit_indicator
data merge entity @s {Motion:[0.0f,0.5f,0.0f]}