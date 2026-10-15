## Player dies

execute if entity @s[team=blue] run function gamemode:tdm/death/blue
execute if entity @s[team=red] run function gamemode:tdm/death/red

execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:comp/respawn/random

execute if entity @s[type=mannequin] run function sa_bots:bot/top_state/active/die