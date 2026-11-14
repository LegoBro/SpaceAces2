## Standby for firebomb
particle minecraft:flame ~ ~ ~ 1 1.5 1 0.001 5
scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team
execute as @e[distance=..3,tag=hb] unless score @s Team = Team Team run function class:4/pyro/trailblazer/damage
execute as @e[type=#projectile:players,tag=hb,distance=..3] if score @s id = place_id id run function class:4/pyro/trailblazer/damage
scoreboard players add @s i 1
#tp @s ~ ~ ~ ~5 ~
execute if score @s i matches 50.. run return run kill @s
#playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1 0

return 1