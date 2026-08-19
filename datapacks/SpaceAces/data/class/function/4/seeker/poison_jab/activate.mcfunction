summon minecraft:item_display ~ ~ ~ {Tags:["poison_jab","raycast","grenade","ignore.projectiles","new"],item:{id:paper,components:{item_model:"class/seeker/laser"}},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=poison_jab,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=poison_jab,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/seeker/poison_jab/projectile
playsound minecraft:block.slime_block.break master @a ~ ~ ~ 1 2

scoreboard players operation @s ability.1.cooldown += class.seeker.1.cooldown Numbers
scoreboard players reset @s rightClick

execute if score @s ability.2.cooldown >= class.seeker.2.duration Numbers run scoreboard players operation @s ability.2.cooldown = class.seeker.2.duration Numbers

return 1