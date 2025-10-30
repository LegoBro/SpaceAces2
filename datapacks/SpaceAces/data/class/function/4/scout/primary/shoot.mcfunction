
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

execute anchored eyes run summon item_display ^-0.5 ^-0.5 ^ {Tags:["pistol","raycast","new","laser"],item:{id:copper_bulb,components:{item_model:"air"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]},teleport_duration:1,billboard: "center"}
execute anchored eyes run tp @e[type=item_display,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=item_display,tag=pistol,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/scout/primary/projectile
execute at @s run playsound minecraft:gun.heavy hostile @a ~ ~ ~
return 1