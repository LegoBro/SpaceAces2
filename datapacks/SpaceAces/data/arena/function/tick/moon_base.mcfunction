
## Chair swivel!
execute as @e[type=item_display,tag=arena.moon_base,tag=decor.moon_chair] at @s facing entity @p[distance=..1] feet run tp @s ~ ~ ~ ~ 0
## Sprinkler Spin
execute as @e[type=item_display,tag=arena.moon_base,tag=decor.sprinkler] at @s run tp @s ~ ~ ~ ~2 ~

execute as @n[tag=decor.sprinkler,sort=random] at @s run function decor:tick/sprinkler