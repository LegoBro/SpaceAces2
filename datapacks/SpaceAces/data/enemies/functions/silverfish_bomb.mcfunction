summon creeper ~ ~1 ~ {ExplosionRadius:2b,Fuse:0,ignited:1b}
scoreboard players operation place_id id = @s id
execute positioned ~ ~1 ~ facing entity @e[team=blue,distance=..5] feet run function classes:bomber/grenade/shoot_red
kill @s
