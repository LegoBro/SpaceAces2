#execute facing entity @p eyes run summon creeper ^ ^ ^1 {ExplosionRadius:2b,Fuse:0,ignited:1b}
playsound minecraft:entity.generic.explode player @a ~ ~ ~ .5 1.5 0
particle minecraft:block{block_state:{Name:"minecraft:lime_stained_glass"}} ~ ~ ~ 1 1 1 0 25

scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[distance=..5,team=red] feet run function class:3.4/bomber/grenade/shoot_blue
execute if entity @s[tag=red] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[distance=..5,team=blue] feet run function class:3.4/bomber/grenade/shoot_red

return 1