#Commands ran for killstreak
execute at @a[tag=in_game,scores={health=..0}] run playsound minecraft:item.totem.use master @a ~ ~ ~ 50 2 1
execute as @a[tag=in_game,scores={health=..0}] run scoreboard players reset @s kills
execute as @a[tag=in_game,scores={health=..0},team=blue] run tp @s @e[tag=blue_spawn,limit=1]
execute as @a[tag=in_game,scores={health=..0},team=red] run tp @s @e[tag=red_spawn,limit=1]
execute as @a[tag=in_game,scores={health=..0}] at @s run tp @s ~ ~ ~ 0 0
execute as @a[tag=in_game,scores={health=..0}] at @s run function gamemode:respawn
execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers -1
execute if score @r[tag=in_game,team=red] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:red_win
execute if score @r[tag=in_game,team=blue] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:blue_win
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win
bossbar set main players
scoreboard objectives modify display displayname {"text":"Killstreaks:","color":"green","type":"text"}
execute as @a[tag=in_game] run scoreboard players operation @s display = @s kills
item replace entity @a[tag=in_game] hotbar.8 with minecraft:air
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10

return 1