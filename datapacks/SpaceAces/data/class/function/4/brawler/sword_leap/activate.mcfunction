scoreboard players operation $strength player_motion.api.launch = class.brawler.1.jump_power Numbers
execute if entity @s[type=player] at @s rotated ~ ~-15 run function player_motion:api/launch_looking
#bots have to use an alternative to the player motion library since it doesn't work on them
execute if entity @s[tag=sab.botEntity] run function sa_bots:bot/class_logic/7_brawler/leap_slam

scoreboard players operation @s ability.1.cooldown = class.brawler.1.cooldown Numbers
scoreboard players reset @s rightClick