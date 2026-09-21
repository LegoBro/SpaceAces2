scoreboard players reset @s rightClick
execute as @n[tag=my_turret] at @s run summon creeper ~ ~ ~ {NoAI:true,Fuse:0}


scoreboard players operation #damage Numbers = class.mechanic.2.explode_damage Numbers
scoreboard players operation #critMult Numbers = class.mechanic.2.explode_critMult Numbers
scoreboard players operation #falloff Numbers = class.mechanic.2.explode_falloff Numbers
scoreboard players operation #falloffStart Numbers = class.mechanic.2.explode_falloffStart Numbers

scoreboard players operation place_id id = @s id
function class:4/helper/tag_team
execute at @n[tag=my_turret] as @e[type=#projectile:players,tag=hb] if score @s id = place_id id facing entity @e[distance=..10,tag=hb,tag=!is_on_team] feet run function projectile:boomer/create

kill @e[tag=my_turret]

return 1