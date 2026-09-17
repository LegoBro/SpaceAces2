# Commands ran for duel
function gamemode:comp/safety/no_players
function gamemode:comp/win/team_elim

bossbar set main players
execute if entity @p[tag=winner] run function gamemode:comp/end/invulnerable

return 1