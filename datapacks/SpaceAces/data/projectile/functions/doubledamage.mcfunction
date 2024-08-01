## Double Damages or Normal heals enemies/team-mates
scoreboard players reset type_damage
scoreboard players reset type_healing
scoreboard players operation place_id id = @s id
scoreboard players operation damage Numbers = @s damage
scoreboard players operation damage Numbers *= 2 Numbers
scoreboard players operation healing Numbers = @s healing
execute if entity @s[tag=blue] at @e[type=!item_frame,tag=!turret,limit=1,sort=nearest,tag=!raycast] run function projectile:hit_dict/blue_hit
execute if entity @s[tag=red] at @e[type=!item_frame,tag=!turret,limit=1,sort=nearest,tag=!raycast] run function projectile:hit_dict/red_hit

execute as @a if score @s id = place_id id at @s run function projectile:big_hit_indicator
tag @s[tag=grenade] add impact
tag @s add kill
