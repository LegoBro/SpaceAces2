#Commands ran for tdm
bossbar set main players
bossbar set minecraft:blue players @a
bossbar set minecraft:red players @a
execute unless score blue_lives Numbers matches 0 store result bossbar minecraft:blue value run scoreboard players get blue_lives Numbers
execute unless score red_lives Numbers matches 0 store result bossbar minecraft:red value run scoreboard players get red_lives Numbers

execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:tdm/death

function gamemode:comp/safety/no_players
function gamemode:comp/win/team_elim


execute if entity @p[tag=winner] run function gamemode:comp/end/invulnerable

return 1