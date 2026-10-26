## Player dies

execute if entity @s[team=blue] run function gamemode:tdm/death/blue
execute if entity @s[team=red] run function gamemode:tdm/death/red

function gamemode:comp/respawn/reselect