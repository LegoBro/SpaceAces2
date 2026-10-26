#Commands ran for killstreak
execute if entity @p[tag=winner] run return run function gamemode:comp/end/invulnerable

function gamemode:comp/safety/no_players
#function gamemode:comp/win/team_elim

execute if score @e[type=#projectile:players,tag=hb,team=red,limit=1,sort=random] kills >= killstreakKills Numbers unless entity @e[type=#projectile:players,tag=hb,tag=winner] run function gamemode:red_win
execute if score @e[type=#projectile:players,tag=hb,team=blue,limit=1,sort=random] kills >= killstreakKills Numbers unless entity @e[type=#projectile:players,tag=hb,tag=winner] run function gamemode:blue_win

bossbar set main players
scoreboard objectives modify display displayname {"text":"Killstreaks:",color:"green","type":"text"}
execute as @e[type=#projectile:players,tag=hb] run scoreboard players operation @s display = @s kills
#item replace entity @a[tag=in_game] hotbar.8 with minecraft:air

execute as @a[tag=in_game,scores={i=1..}] at @s run function gamemode:comp/respawn/await

return 1