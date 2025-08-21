tag @s add return
execute as @e[type=marker,tag=class.mechanic.manual_override.marker] at @s if score @s id = #Class_Start id run tp @p[tag=return] @s
tag @s remove return
execute as @e[type=marker,tag=class.mechanic.manual_override.marker] at @s if score @s id = #Class_Start id run kill @s
scoreboard players set @s ultimate.cooldown 0
effect clear @s
gamemode adventure
tag @s remove class.mechanic.manual_override.drone_operator
kill @e[tag=my_drone]