## Double Damages or Normal heals enemies/team-mates

execute if score @s critMult matches 100 run return run function projectile:damage

scoreboard players reset type_damage
scoreboard players reset type_healing
scoreboard players operation place_id id = @s id
scoreboard players operation damage Numbers = @s damage
scoreboard players operation damage Numbers *= @s critMult
scoreboard players operation damage Numbers /= 100 Numbers
scoreboard players operation healing Numbers = @s healing
scoreboard players operation #test Team = @s Team
tag @n[type=!minecraft:item_frame,tag=!turret,tag=!ignore,tag=!raycast,sort=nearest,limit=1,distance=..3] add projectile.target
execute at @n[tag=projectile.target,distance=..3] run function projectile:hit
tag @n[tag=projectile.target] remove projectile.target

execute as @a if score @s id = place_id id at @s run function projectile:big_hit_indicator
tag @s[tag=grenade] add impact
tag @s[tag=grenade] add projectile.impact.hitbox
tag @s add kill

return 1