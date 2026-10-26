execute if entity @s[type=mannequin] run return run function sa_bots:bot/top_state/active/die

tp @s[team=blue] 6 195 -1 90 0
tp @s[team=red] 10 195 -1 -90 0
scoreboard players add @s i 1
function gamemode:respawn