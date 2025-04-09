execute positioned ^ ^ ^-0.5 run summon minecraft:creeper ^ ^ ^ {ExplosionRadius:1b,Fuse:0s,ignited:1b,Tags:["ignore","ignore.projectiles"]}

# Load in boomer stats
scoreboard players operation #damage Numbers = class.rocketeer.2.impact_damage Numbers
scoreboard players operation #critMult Numbers = class.rocketeer.2.impact_critMult Numbers
scoreboard players operation #falloff Numbers = class.rocketeer.2.impact_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.rocketeer.2.impact_falloffStart Numbers

scoreboard players operation #team Team = @s Team

scoreboard players operation place_id id = @s id
execute as @a if score @s id = place_id id run tag @s add attacker
execute positioned ^ ^ ^-0.5 as @p[tag=attacker] facing entity @e[distance=1..5,tag=!ignore,tag=!ignore.projectiles] feet positioned ^ ^ ^ run function projectile:boomer/create
execute positioned ^ ^ ^-0.5 as @e[distance=..0.999,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #team Team run function projectile:boomer/damage_near
tag @a remove attacker
#execute if entity @s[tag=stuck] run say stuck
#execute positioned ~ ~0.25 ~ as @a if score @s id = place_id id as @e[distance=..5,tag=!ignore,tag=!ignore.projectiles] run say @s
return 1