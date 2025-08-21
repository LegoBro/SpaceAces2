
summon marker ~ ~ ~ {Tags:["melee","raycast"]}
tp @e[type=marker,tag=melee,sort=nearest,limit=1,distance=..1.5] ^ ^ ^ ~ ~
execute as @e[type=marker,tag=melee,sort=nearest,limit=1,distance=..1.5] at @s run function class:4/helper/punch/projectile
return 1