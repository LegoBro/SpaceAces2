# homes into the sword owner
execute as @a if score @s id = place_id id run tag @s add owner
execute facing entity @a[tag=owner,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute facing entity @a[tag=owner,limit=1] feet run tp @s ^ ^ ^1
execute if entity @a[tag=owner,limit=1,distance=..2] run kill @s
tag @a[tag=owner] remove owner
