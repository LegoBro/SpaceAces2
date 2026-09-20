#execute facing entity @p eyes run summon creeper ^ ^ ^1 {ExplosionRadius:2b,Fuse:0,ignited:1b}
playsound minecraft:entity.generic.explode player @a ~ ~ ~ .5 1.5 0
particle minecraft:item{item:"minecraft:polished_basalt"} ~ ~ ~ 0.1 0.1 0.1 0.25 100

scoreboard players operation #damage Numbers = class.bomber.primary.explode_damage Numbers
scoreboard players operation #critMult Numbers = class.bomber.primary.explode_critMult Numbers
scoreboard players operation #falloff Numbers = class.bomber.primary.explode_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.bomber.primary.explode_falloffStart Numbers

scoreboard players operation place_id id = @s id
function class:4/helper/tag_team
execute positioned ^ ^ ^-0.5 as @e[type=#projectile:players,tag=hb] if score @s id = place_id id facing entity @e[distance=..5,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] feet run function projectile:boomer/create
return 1

execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run tag @s add attacker
function class:4/helper/tag_team
execute positioned ^ ^ ^-0.5 as @n[type=#projectile:players,tag=hb,tag=attacker] facing entity @e[distance=1..5,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] feet positioned ^ ^ ^ run function projectile:boomer/create
execute positioned ^ ^ ^-0.5 as @e[distance=..0.999,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] run function projectile:boomer/damage_near
tag @e[type=#projectile:players,tag=hb] remove attacker