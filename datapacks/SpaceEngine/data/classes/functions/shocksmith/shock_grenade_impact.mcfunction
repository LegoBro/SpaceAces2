particle block yellow_concrete_powder ~ ~1 ~ 2 2 2 1 50 force @a
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 0.2 2.0
scoreboard players operation place_id id = @s id
execute if entity @s[tag=blue] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[team=!spectator,team=!lobby,distance=..5] feet run function classes:shocksmith/grenade/shoot_blue
execute if entity @s[tag=red] facing entity @p eyes positioned ^ ^ ^1 as @a if score @s id = place_id id facing entity @e[team=!spectator,team=!lobby,distance=..5] feet run function classes:shocksmith/grenade/shoot_red
