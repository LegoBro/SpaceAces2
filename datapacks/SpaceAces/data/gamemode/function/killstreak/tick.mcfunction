#Commands ran for killstreak

execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers -1
execute if score @r[tag=in_game,team=red] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:red_win
execute if score @r[tag=in_game,team=blue] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:blue_win
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win
bossbar set main players
scoreboard objectives modify display displayname {"text":"Killstreaks:",color:"green","type":"text"}
execute as @a[tag=in_game] run scoreboard players operation @s display = @s kills
item replace entity @a[tag=in_game] hotbar.8 with minecraft:air
execute if entity @a[tag=winner] run function gamemode:comp/end/invulnerable

return 1