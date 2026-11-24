## PLayer has hit entity in critical spot
playsound minecraft:gun.hit player @s ~ ~ ~ 1 0 0
execute anchored eyes positioned ^ ^ ^0.25 run particle minecraft:enchanted_hit ^ ^-0.25 ^0.5 0 0 0 0 1 force @s
execute if score type_damage Numbers matches 1 run function projectile:last_shot
execute if score type_healing Numbers matches 1 run scoreboard players operation @s stat.game.healing_dealt += healing Numbers

execute if score #proj.slot proj.slot matches 1 run scoreboard players add @s stat.game.shots_hit 1
execute if score #proj.slot proj.slot matches 1 run scoreboard players add @s stat.game.headshots 1

return 1