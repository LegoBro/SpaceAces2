
#execute if entity @s[type=mannequin] run return run function sa_bots:bot/top_state/active/die

tp @s[team=blue,tag=!spectator] 6 195 -1 90 0
schedule function gamemode:payload/blue_spawn 30s