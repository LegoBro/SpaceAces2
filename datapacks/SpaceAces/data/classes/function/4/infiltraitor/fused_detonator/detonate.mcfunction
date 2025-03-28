summon minecraft:creeper ~ ~ ~ {ExplosionRadius:3b,Fuse:0s,ignited:1b,Invulnerable:true,Tags:["ignore.projectiles"]}

# Load in boomer stats
scoreboard players operation #damage Numbers = class.infiltraitor.2.detonate_damage Numbers
scoreboard players operation #critMult Numbers = class.infiltraitor.2.detonate_critMult Numbers
scoreboard players operation #falloff Numbers = class.infiltraitor.2.detonate_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.infiltraitor.2.detonate_falloffStart Numbers

tag @s add ignore.projectiles
scoreboard players operation place_id id = @s id
execute positioned ~ ~ ~ as @a if score @s id = place_id id facing entity @e[distance=..8,tag=!ignore,tag=!ignore.projectiles] feet positioned ^ ^ ^ run function projectile:boomer/create
kill @s
return 1