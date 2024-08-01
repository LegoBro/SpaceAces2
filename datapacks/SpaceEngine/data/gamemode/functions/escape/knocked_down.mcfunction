team join red @s
execute unless block ~ ~-1 ~ air run fill ~ ~1 ~ ~ ~1 ~ creeper_head replace air
execute unless block ~ ~-1 ~ air run effect give @s minecraft:jump_boost 1 129 true
execute unless block ~ ~-1 ~ air run effect give @s minecraft:slowness 1 100 true
effect give @s hunger 1 10 true
scoreboard players set @s health 0
scoreboard players set @s rightClick -1
execute if entity @p[team=blue,tag=escape,distance=..5,tag=hb_crouched_player] run scoreboard players add @s i 1
execute if score @s i matches 100.. run function gamemode:escape/revive
execute as @a[tag=in_game,tag=escape,distance=..5] at @s run title @s subtitle {"translate":"near_player"}
execute as @a[tag=in_game,tag=escape,distance=..5] at @s run title @s title ""
scoreboard players add @s invulnerable 1
