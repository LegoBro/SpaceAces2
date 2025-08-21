
scoreboard players set @s shoot 1
scoreboard players remove @s[scores={ultimate.cooldown=..0}] totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon marker ~ ~ ~ {Tags:["cannon","raycast","new"]}
execute anchored eyes run tp @n[type=marker,tag=cannon,tag=new,distance=..3] ^ ^ ^ ~ ~
execute if score @s ultimate.cooldown matches 1.. run tag @n[type=marker,tag=cannon,tag=new,distance=..3] add grenade
execute as @n[type=marker,tag=cannon,tag=new,distance=..3] at @s run function class:4/gunner/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1
