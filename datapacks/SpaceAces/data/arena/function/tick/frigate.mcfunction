execute unless score activePoint Numbers matches 0 run return fail
## Center Point
execute as @n[type=marker,tag=arena.frigate.center_shields] at @s run tp @s ~ ~ ~ ~5 ~
execute if score point Numbers matches 0.. as @n[type=marker,tag=arena.frigate.center_shields] at @s positioned ^ ^ ^-7.5 run fill ~-0.5 ~ ~-0.5 ~0.5 ~15 ~0.5 cave_air replace minecraft:blue_stained_glass
execute if score point Numbers matches ..0 as @n[type=marker,tag=arena.frigate.center_shields] at @s positioned ^ ^ ^-7.5 run fill ~-0.5 ~ ~-0.5 ~0.5 ~15 ~0.5 cave_air replace red_stained_glass
execute if score point Numbers matches 1.. as @n[type=marker,tag=arena.frigate.center_shields] unless entity @s[y_rotation=-90..90] at @s positioned ^ ^ ^7.5 run fill ~-0.5 ~ ~-0.5 ~0.5 ~15 ~0.5 minecraft:red_stained_glass replace cave_air
execute if score point Numbers matches ..-1 as @n[type=marker,tag=arena.frigate.center_shields] if entity @s[y_rotation=-90..90] at @s positioned ^ ^ ^7.5 run fill ~-0.5 ~ ~-0.5 ~0.5 ~15 ~0.5 minecraft:blue_stained_glass replace cave_air
