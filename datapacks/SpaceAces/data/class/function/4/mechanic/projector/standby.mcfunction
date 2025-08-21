## Projector

scoreboard players add @s i 1
execute if score @s i > class.mechanic.2.duration Numbers run return run kill @s

particle minecraft:trial_spawner_detection ~ ~ ~ 2 0 2 0 10 normal

scoreboard players operation #Team Team = @s Team
execute as @a[distance=..5] if score @s Team = #Team Team run function class:4/mechanic/projector/apply