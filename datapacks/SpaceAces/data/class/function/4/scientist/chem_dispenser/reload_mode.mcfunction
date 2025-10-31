

execute if score @s i >= class.scientist.2.reload_rate Numbers run scoreboard players set @s i 0
## If counter isn't at 0, skip
execute if score @s i matches 1.. run return 0

particle minecraft:angry_villager ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a
execute as @a[distance=..3] if score @s Team = #target_team Numbers run tag @s add class.target
scoreboard players operation @a[tag=class.target,scores={reload=1..}] reload += class.scientist.2.reload_amount Numbers

execute as @p[tag=target.owner,distance=..3] run scoreboard players add @s[scores={shoot=1..}] shoot 1
