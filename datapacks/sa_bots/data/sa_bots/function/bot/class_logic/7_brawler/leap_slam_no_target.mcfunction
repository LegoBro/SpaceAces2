#executes the leap slam ability
#(must be handled differently since bots can't use player motion library)

#apply motion
#scoreboard players operation $strength player_motion.api.launch = class.brawler.1.jump_power Numbers
execute at @s rotated ~ ~-42 run function sa_bots:bot/player_motion_alternative/api/launch_looking

#clean up tags
tag @s[tag=sab.leapSlamNoTarget] remove sab.leapSlamNoTarget