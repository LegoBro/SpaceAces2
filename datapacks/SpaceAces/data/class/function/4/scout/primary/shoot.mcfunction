
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon marker ~ ~ ~ {Tags:["pistol","raycast","new"]}
execute anchored eyes run tp @e[type=marker,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=marker,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/scout/primary/projectile
execute at @s run playsound minecraft:gun.heavy hostile @a ~ ~ ~
return 1