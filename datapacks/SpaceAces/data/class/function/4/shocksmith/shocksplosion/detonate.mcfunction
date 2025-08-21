summon minecraft:creeper ~ ~ ~ {ExplosionRadius:10b,Fuse:0s,ignited:1b,Invulnerable:true,Tags:["ignore.projectiles"]}

# Load in boomer stats
scoreboard players operation #damage Numbers = class.shocksmith.ultimate.detonate_damage Numbers
scoreboard players operation #critMult Numbers = class.shocksmith.ultimate.detonate_critMult Numbers
scoreboard players operation #falloff Numbers = class.shocksmith.ultimate.detonate_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.shocksmith.ultimate.detonate_falloffStart Numbers
#scoreboard players operation #damageMultiplier Numbers = @s damageMultiplier

tag @s add ignore.projectiles
scoreboard players operation place_id id = @s id
scoreboard players operation #Team Team = @s Team
execute as @a if score @s id = place_id id run tag @s add attacker
execute as @p[tag=attacker] facing entity @e[distance=1..50,tag=!ignore,tag=!ignore.projectiles] feet positioned ^ ^ ^ run function projectile:boomer/create
execute as @e[distance=..0.999,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #team Team run function class:4/bomber/sticky_bomb/damage_near
execute as @a if score @s Team = #Team Team run function class:4/shocksmith/shocksplosion/heal
tag @a remove attacker
kill @s
return 1