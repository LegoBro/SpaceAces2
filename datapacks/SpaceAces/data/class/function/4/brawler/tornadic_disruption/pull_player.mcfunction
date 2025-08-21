
execute if score @s Team = #team Team run return 1
scoreboard players operation @s damage += damage Numbers
execute as @p[tag=target.owner] at @s run function projectile:hit_indicator
scoreboard players operation $strength player_motion.api.launch = class.brawler.ultimate.pull_strength Numbers
execute facing entity @n[type=marker,tag=class.brawler.tornado] feet rotated ~ -45 run function player_motion:api/launch_looking