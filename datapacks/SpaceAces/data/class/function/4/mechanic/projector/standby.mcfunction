## Projector
tp @s ~ ~ ~ ~10 ~
scoreboard players add @s i 1
execute if score @s i matches 2 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,3f,0f],scale:[1f,1f,1f]}}
execute if score @s i > class.mechanic.2.duration Numbers positioned ~ ~3 ~ run return run function class:4/mechanic/projector/death

#particle minecraft:trial_spawner_detection ~ ~ ~ 2 0 2 0 10 normal

particle trial_spawner_detection ^ ^ ^5 0 0 0 0 1 force @a
particle trial_spawner_detection ^ ^ ^-5 0 0 0 0 1 force @a

particle trial_spawner_detection ^5 ^ ^ 0 0 0 0 1 force @a
particle trial_spawner_detection ^-5 ^ ^ 0 0 0 0 1 force @a

execute rotated ~5 ~ run particle trial_spawner_detection ^ ^ ^5 0 0 0 0 1 force @a
execute rotated ~5 ~ run particle trial_spawner_detection ^ ^ ^-5 0 0 0 0 1 force @a

execute rotated ~5 ~ run particle trial_spawner_detection ^5 ^ ^ 0 0 0 0 1 force @a
execute rotated ~5 ~ run particle trial_spawner_detection ^-5 ^ ^ 0 0 0 0 1 force @a

scoreboard players operation #Team Team = @s Team
execute as @e[type=#projectile:players,tag=hb,distance=..5] if score @s Team = #Team Team run function class:4/mechanic/projector/apply
execute as @e[distance=..5,tag=turret,tag=class.deployable] if score @s Team = #Team Team run function class:4/mechanic/projector/apply