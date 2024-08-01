#Commands ran for killstreak
execute at @a[scores={health=..0},tag=in_game] run playsound minecraft:item.totem.use master @a ~ ~ ~ 50 2 1
execute as @a[scores={health=..0},tag=in_game] run scoreboard players reset @s kills
execute as @a[scores={health=..0},tag=in_game,team=blue] run tp @s @e[limit=1,tag=blue_spawn]
execute as @a[scores={health=..0},tag=in_game,team=red] run tp @s @e[limit=1,tag=red_spawn]
execute as @a[scores={health=..0},tag=in_game] at @s run tp @s ~ ~ ~ 0 0
execute as @a[scores={health=..0},tag=in_game] at @s run function gamemode:respawn
execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers 0
execute if score @r[tag=in_game,team=red] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:red_win
execute if score @r[tag=in_game,team=blue] kills >= killstreakKills Numbers unless entity @a[tag=winner] run function gamemode:blue_win
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win
bossbar set main players
scoreboard objectives modify display displayname {"text":"Killstreaks:","color":"green"}
execute as @a[tag=in_game] run scoreboard players operation @s display = @s kills
item replace entity @a[tag=in_game] hotbar.8 with air
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10
