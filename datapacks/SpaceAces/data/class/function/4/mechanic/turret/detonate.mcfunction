scoreboard players reset @s rightClick
execute as @n[tag=my_turret] at @s run summon creeper ~ ~ ~ {NoAI:true,Fuse:0}
kill @n[tag=my_turret]

scoreboard players operation #damage Numbers = class.mechanic.2.explode_damage Numbers
scoreboard players operation #critMult Numbers = class.mechanic.2.explode_critMult Numbers
scoreboard players operation #falloff Numbers = class.mechanic.2.explode_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.mechanic.2.explode_falloffStart Numbers

scoreboard players operation place_id id = @s id
execute positioned ~ ~1 ~ as @a if score @s id = place_id id facing entity @e[distance=..10,tag=!ignore,tag=!ignore.projectiles] feet run function projectile:boomer/create

return 1