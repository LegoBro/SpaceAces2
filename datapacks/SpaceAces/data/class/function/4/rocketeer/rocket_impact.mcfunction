execute positioned ^ ^ ^-0.5 run summon minecraft:creeper ^ ^ ^ {ExplosionRadius:1b,Fuse:0s,ignited:1b,Tags:["ignore","ignore.projectiles"]}

# Load in boomer stats
scoreboard players operation #damage Numbers = class.rocketeer.primary.impact_damage Numbers
scoreboard players operation #critMult Numbers = class.rocketeer.primary.impact_critMult Numbers
scoreboard players operation #falloff Numbers = class.rocketeer.primary.impact_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.rocketeer.primary.impact_falloffStart Numbers

scoreboard players operation place_id id = @s id
execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run tag @s add attacker
function class:4/helper/tag_team
execute positioned ^ ^ ^-0.5 as @n[type=#projectile:players,tag=hb,tag=attacker] facing entity @e[distance=1..5,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] feet positioned ^ ^ ^ run function projectile:boomer/create
execute positioned ^ ^ ^-0.5 as @e[distance=..0.999,tag=!ignore,tag=!ignore.projectiles,tag=!is_on_team] run function projectile:boomer/damage_near
tag @e[type=#projectile:players,tag=hb] remove attacker
return 1