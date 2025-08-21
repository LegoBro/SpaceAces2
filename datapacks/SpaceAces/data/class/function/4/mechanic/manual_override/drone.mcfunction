## Drone-age

execute as @e[type=item_display,tag=class.mechanic.manual_override.drone] if score @s id = #Class_Start id run tag @s add my_drone

execute unless entity @n[type=item_display,tag=my_drone,distance=..0.01] run return run function class:4/mechanic/manual_override/return



execute unless entity @s[tag=input.jump] if block ~ ~-1.5 ~ air as @n[type=item_display,tag=my_drone] at @s run tp @s ~ ~-.25 ~
execute unless block ~ ~-.5 ~ air as @n[type=item_display,tag=my_drone] at @s run tp @s ~ ~.25 ~

execute if entity @s[tag=input.jump] as @n[type=item_display,tag=my_drone] at @s run tp @s ~ ~.25 ~

execute if entity @s[tag=input.forward] as @n[type=item_display,tag=my_drone] at @s if block ^ ^ ^.25 air run tp @s ^ ^ ^.25
execute if entity @s[tag=input.backward] as @n[type=item_display,tag=my_drone] at @s if block ^ ^ ^-.25 air run tp @s ^ ^ ^-.25
execute if entity @s[tag=input.left] as @n[type=item_display,tag=my_drone] at @s run tp @s ~ ~ ~ ~-5 ~
execute if entity @s[tag=input.right] as @n[type=item_display,tag=my_drone] at @s run tp @s ~ ~ ~ ~5 ~

tag @e[type=item_display] remove my_drone