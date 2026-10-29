data remove storage dev:helper player
loot spawn 0 -64 0 loot dev:player_head
execute positioned 0 -64 0 run data modify storage dev:helper player.name set from entity @n[type=item,distance=..1] Item.components."minecraft:profile".name
execute store result storage dev:helper player.class int 1 run scoreboard players get @s Class

execute store result storage dev:helper player.stat.play_time int 1 run scoreboard players get @s stat.game.play_time
execute store result storage dev:helper player.stat.player_kills int 1 run scoreboard players get @s stat.game.player_kills
execute store result storage dev:helper player.stat.object_kills int 1 run scoreboard players get @s stat.game.object_kills
execute store result storage dev:helper player.stat.damage_dealt int 1 run scoreboard players get @s stat.game.damage_dealt
execute store result storage dev:helper player.stat.damage_taken int 1 run scoreboard players get @s stat.game.damage_taken
execute store result storage dev:helper player.stat.healing_dealt int 1 run scoreboard players get @s stat.game.healing_dealt
execute store result storage dev:helper player.stat.healing_received int 1 run scoreboard players get @s stat.game.healing_received
execute store result storage dev:helper player.stat.deaths int 1 run scoreboard players get @s stat.game.deaths

execute if score @s Team matches 1 run data modify storage dev:helper players.blue append from storage dev:helper player
execute if score @s Team matches 2 run data modify storage dev:helper players.red append from storage dev:helper player
execute unless score @s Team matches 1..2 run data modify storage dev:helper players.general append from storage dev:helper player