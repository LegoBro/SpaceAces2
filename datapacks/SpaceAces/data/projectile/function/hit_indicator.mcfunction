## Player has hit an entity
playsound minecraft:gun.hit player @s ~ ~ ~ 1 1 0
execute anchored eyes positioned ^ ^ ^0.25 run particle minecraft:crit ^ ^-0.25 ^0.5 0 0 0 0 1 force @s
execute if score type_damage Numbers matches 1 run function projectile:last_shot
execute if score type_healing Numbers matches 1 run function projectile:heal

execute if score #proj.slot proj.slot matches 1 run scoreboard players add @s stat.game.shots_hit 1
return 1