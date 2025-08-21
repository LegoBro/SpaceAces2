#execute facing entity @p eyes run summon creeper ^ ^ ^1 {ExplosionRadius:2b,Fuse:0,ignited:1b}
playsound minecraft:entity.generic.explode player @a ~ ~ ~ .5 1.5 0
particle minecraft:explosion ~ ~ ~ 0 0 0 0 1 force

scoreboard players operation #damage Numbers = class.gunner.ultimate.explode_damage Numbers
scoreboard players operation #critMult Numbers = class.gunner.ultimate.explode_critMult Numbers
scoreboard players operation #falloff Numbers = class.gunner.ultimate.explode_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.gunner.ultimate.explode_falloffStart Numbers

scoreboard players operation place_id id = @s id
execute positioned ^ ^ ^-0.5 as @a if score @s id = place_id id facing entity @e[distance=..5,tag=!ignore,tag=!ignore.projectiles] feet run function projectile:boomer/create
return 1