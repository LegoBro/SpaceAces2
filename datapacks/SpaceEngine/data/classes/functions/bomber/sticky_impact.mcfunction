execute facing entity @p eyes run summon creeper ^ ^ ^1 {ExplosionRadius:2b,Fuse:0,ignited:1b}

scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[team=red,distance=..5] feet run function classes:bomber/grenade/shoot_blue
execute if entity @s[tag=red] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[team=blue,distance=..5] feet run function classes:bomber/grenade/shoot_red
