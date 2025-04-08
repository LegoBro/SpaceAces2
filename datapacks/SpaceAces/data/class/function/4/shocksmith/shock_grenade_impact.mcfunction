particle minecraft:block{block_state:{Name:"minecraft:yellow_concrete_powder"}} ~ ~1 ~ 2 2 2 1 50 force @a
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.2 2.0

scoreboard players operation #healing Numbers = class.shocksmith.secondary.explode_healing Numbers
scoreboard players operation #damage Numbers = class.shocksmith.secondary.explode_damage Numbers
scoreboard players operation #critMult Numbers = class.shocksmith.secondary.explode_critMult Numbers
scoreboard players operation #falloff Numbers = class.shocksmith.secondary.explode_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.shocksmith.secondary.explode_falloffStart Numbers

scoreboard players operation place_id id = @s id
execute positioned ^ ^ ^-0.5 as @a if score @s id = place_id id facing entity @e[distance=..5,tag=!ignore,tag=!ignore.projectiles] feet run function projectile:boomer/create
execute positioned ^ ^ ^-0.5 as @a[distance=..3] if score @s id = place_id id run function class:4/shocksmith/secondary/self_heal
return 1