scoreboard players reset @s kills
function gamemode:comp/respawn/team
execute if entity @s[type=mannequin] run function sa_bots:bot/top_state/active/die