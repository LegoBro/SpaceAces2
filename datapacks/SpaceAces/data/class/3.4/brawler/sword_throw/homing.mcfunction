# homes into the sword owner
execute as @a if score @s id = place_id id run tag @s add owner
execute facing entity @a[tag=owner,limit=1] feet run tp @s ^ ^ ^ ~ ~
execute facing entity @a[tag=owner,limit=1] feet run tp @s ^ ^ ^1
execute if entity @a[distance=..2,tag=owner,limit=1] run kill @s
tag @a[tag=owner] remove owner

return 1