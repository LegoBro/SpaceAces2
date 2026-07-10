## Standby for firebomb
particle minecraft:flame ~ ~1.5 ~ 0 0 0 0.1 25
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] as @e[distance=..3,team=red] run function class:3.4/pyro/fire_bomb/damage
execute if entity @s[tag=red] as @e[distance=..3,team=blue] run function class:3.4/pyro/fire_bomb/damage
execute as @a[distance=..3] if score @s id = place_id id run function class:3.4/pyro/fire_bomb/damage
scoreboard players add @s i 1
tp @s ~ ~ ~ ~5 ~
execute if score @s i matches 100.. run kill @s
playsound minecraft:block.fire.ambient hostile @a ~ ~ ~ 1 1 0

return 1