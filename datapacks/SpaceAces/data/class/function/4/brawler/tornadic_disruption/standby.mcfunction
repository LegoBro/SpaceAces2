## Tornado is ticking

# Lifetime
scoreboard players add @s i 1
execute if score @s i >= class.brawler.ultimate.duration Numbers run return run kill @s

## Movement
tp @s ^ ^ ^0.125
execute at @s if block ~ ~-1 ~ air run tp @s ~ ~-.25 ~
execute at @s unless block ~ ~ ~ air run tp @s ~ ~.25 ~

## Damage
scoreboard players operation #team Team = @s Team
scoreboard players operation #id id = @s id
scoreboard players operation damage Numbers = class.brawler.ultimate.damage Numbers
execute as @a if score @s id = #id id run tag @s add target.owner

execute as @a[scores={health=1..},distance=..4] at @s run function class:4/brawler/tornadic_disruption/pull_player
execute as @e[type=!player,tag=!ignore,tag=!ignore.projectiles,tag=!tick.ignore,scores={health=1..},distance=..4] at @s run function class:4/brawler/tornadic_disruption/pull_entity
## Display
particle minecraft:sweep_attack ~ ~ ~ 0.5 1 0.5 1 3 normal
particle minecraft:sweep_attack ~ ~3 ~ 1 1 1 1 5 normal
particle minecraft:sweep_attack ~ ~6 ~ 2 1 2 1 8 normal
particle minecraft:sweep_attack ~ ~9 ~ 3 1 3 1 13 normal

tag @a remove target.owner