#Commands ran for duel
execute at @a[scores={health=..0},tag=in_game] run playsound minecraft:item.totem.use master @a ~ ~ ~ 50 2 1
team join spectator @a[scores={health=..0},tag=in_game]
gamemode spectator @a[tag=in_game,team=spectator]
tag @a[tag=in_game,team=spectator] remove in_game
execute unless entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] run scoreboard players set ActiveMode Numbers 0
execute if entity @a[tag=in_game,team=red] unless entity @a[tag=in_game,team=blue] unless entity @a[tag=winner] run function gamemode:red_win
execute if entity @a[tag=in_game,team=blue] unless entity @a[tag=in_game,team=red] unless entity @a[tag=winner] run function gamemode:blue_win
bossbar set main players
item replace entity @a[tag=in_game] hotbar.8 with air
execute if entity @a[tag=winner] run scoreboard players set @a[tag=in_game] invulnerable 10
