
summon marker ~ ~ ~ {Tags:["sniper","raycast","new","projectile.piercing"]}
execute anchored eyes run tp @e[type=marker,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=marker,tag=sniper,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/mobility/surging_unstability/projectile
execute at @s run playsound minecraft:gun.plasma hostile @a ~ ~ ~
return 1