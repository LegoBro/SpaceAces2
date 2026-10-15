## Compass to point
execute store result storage dev:coord x int 1 run data get entity @s Pos[0]
execute store result storage dev:coord y int 1 run data get entity @s Pos[1]
execute store result storage dev:coord z int 1 run data get entity @s Pos[2]

function gamemode:comp/tool/compass_macro with storage dev:coord

execute as @a[tag=in_game] at @s unless items entity @s hotbar.7 compass run item replace entity @s hotbar.7 from block 15 -63 2 container.0