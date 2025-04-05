scoreboard players operation $strength player_motion.api.launch = class.brawler.1.jump_power Numbers
execute at @s rotated ~ ~-15 run function player_motion:api/launch_looking

scoreboard players operation @s ability.1.cooldown = class.brawler.1.cooldown Numbers
scoreboard players reset @s rightClick