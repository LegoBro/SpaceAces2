
execute if score @s i >= class.scientist.1.healing_rate Numbers run scoreboard players set @s i 0
## If counter isn't at 0, skip
execute if score @s i matches 1.. run return 0

particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a
execute as @a[distance=..5] if score @s Team = #target_team Numbers run tag @s add class.target
scoreboard players operation @a[tag=class.target] healing += class.scientist.1.healing_amount Numbers
execute as @a[tag=class.target] as @a if score @s id = #target_owner Numbers run scoreboard players operation @s game_healing += class.scientist.1.healing_amount Numbers