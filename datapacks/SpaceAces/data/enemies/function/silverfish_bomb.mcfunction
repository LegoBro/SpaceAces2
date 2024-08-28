summon minecraft:creeper ~ ~1 ~ {ExplosionRadius:2b,Fuse:0s,ignited:1b}
scoreboard players operation place_id id = @s id
execute positioned ~ ~1 ~ facing entity @e[distance=..5,team=blue] feet run function classes:bomber/grenade/shoot_red
kill @s

return 1