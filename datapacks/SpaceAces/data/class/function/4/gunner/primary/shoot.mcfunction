
scoreboard players set @s shoot 1
scoreboard players remove @s[scores={ultimate.cooldown=..0}] totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

#summon item_display ~ ~ ~ {Tags:["cannon","raycast","new"]}
execute anchored eyes run summon item_display ^-0.5 ^-0.5 ^ {Tags:["cannon","raycast","new","laser"],item:{id:stone,components:{item_model:air}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.125f,0.125f,0.125f]},teleport_duration:1,billboard: "center"}
execute anchored eyes run tp @n[type=item_display,tag=cannon,tag=new,distance=..3] ^ ^ ^ ~ ~
execute if score @s ultimate.cooldown matches 1.. run tag @n[type=item_display,tag=cannon,tag=new,distance=..3] add grenade
execute as @n[type=item_display,tag=cannon,tag=new,distance=..3] at @s run function class:4/gunner/primary/projectile
execute at @s run playsound minecraft:gun.rifle hostile @a ~ ~ ~
return 1
