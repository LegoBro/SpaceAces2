
scoreboard players operation @s shoot = class.shocksmith.primary.firerate Numbers
#scoreboard players remove @s totalShots 1
#scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute anchored eyes run summon item_display ^-0.5 ^-0.3 ^ {Tags:["shockround","raycast","new","laser","projectile.invisible","grenade"],item:{id:paper,components:{item_model:"class/shocksmith/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}

execute anchored eyes run tp @n[type=minecraft:item_display,tag=shockround,tag=new,distance=..3] ^ ^ ^ ~ ~
execute as @n[type=minecraft:item_display,tag=shockround,tag=new,distance=..3] at @s run function class:4/shocksmith/primary/projectile

execute at @s run playsound minecraft:gun.heavy hostile @a ~ ~ ~ 1 2 0
return 1