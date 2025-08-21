tag @s add return
execute as @e[type=marker,tag=class.infiltraitor.projected_clone.marker] at @s if score @s id = #Class_Start id run tp @p[tag=return] @s
tag @s remove return
execute as @e[type=marker,tag=class.infiltraitor.projected_clone.marker] at @s if score @s id = #Class_Start id run kill @s
scoreboard players set @s ultimate.cooldown 0
effect clear @s
effect give @s minecraft:darkness 2 0 true