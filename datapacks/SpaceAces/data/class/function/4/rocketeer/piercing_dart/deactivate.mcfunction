summon minecraft:marker ~ ~ ~ {Tags:["rifle","raycast","new","projectile.invisible"]}
execute anchored eyes run tp @n[type=minecraft:marker,tag=rifle,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:marker,tag=rifle,tag=new,distance=..3] at @s run function class:4/rocketeer/piercing_dart/projectile
playsound minecraft:gun.rifle player @a ~ ~ ~ 1 2

return 1