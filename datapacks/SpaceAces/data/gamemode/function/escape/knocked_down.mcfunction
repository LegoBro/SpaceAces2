team join red @s
execute unless block ~ ~-1 ~ minecraft:air run fill ~ ~1 ~ ~ ~1 ~ minecraft:creeper_head replace minecraft:air
execute unless block ~ ~-1 ~ minecraft:air run function help:ed85b99b5873db5332ce0e17c72e2a85401075088ae91f3531e79b91109db92b
execute unless block ~ ~-1 ~ minecraft:air run effect give @s minecraft:slowness 1 100 true
effect give @s minecraft:hunger 1 10 true
scoreboard players set @s health 0
scoreboard players set @s rightClick -1
execute if entity @p[distance=..5,tag=escape,tag=hb_crouched_player,team=blue] run scoreboard players add @s i 1
execute if score @s i matches 100.. run function gamemode:escape/revive
execute as @a[distance=..5,tag=in_game,tag=escape] at @s run title @s subtitle {translate:"near_player"}
execute as @a[distance=..5,tag=in_game,tag=escape] at @s run title @s title ""
scoreboard players add @s invulnerable 1

return 1