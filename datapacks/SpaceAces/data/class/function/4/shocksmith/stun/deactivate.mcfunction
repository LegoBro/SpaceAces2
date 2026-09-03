summon item_display ~ ~ ~ {Tags:["stun","raycast","grenade","ignore.projectiles","projectile.invisible","new"],teleport_duration:1,item:{id:paper,components:{item_model:"class/shocksmith/laser"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},teleport_duration:1,billboard: "center", brightness:{block:15,sky:15}}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=stun,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=stun,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/shocksmith/stun/projectile

playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2



return 1