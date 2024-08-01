execute store result score @s xpos run data get entity @s Pos[0] 16
scoreboard players operation @s xpos %= 16 Numbers
execute store result score @s zpos run data get entity @s Pos[2] 16
scoreboard players operation @s zpos %= 16 Numbers

tag @s add continue
execute if block ~ ~ ~ #projectile:glass_panes if score @s xpos matches 7..8 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #projectile:glass_panes[east=true] if score @s xpos matches 9..15 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #projectile:glass_panes[west=true] if score @s xpos matches 0..6 if score @s zpos matches 7..8 run tag @s remove continue
execute if block ~ ~ ~ #projectile:glass_panes[south=true] if score @s xpos matches 7..8 if score @s zpos matches 9..15 run tag @s remove continue
execute if block ~ ~ ~ #projectile:glass_panes[north=true] if score @s xpos matches 7..8 if score @s zpos matches 0..6 run tag @s remove continue
