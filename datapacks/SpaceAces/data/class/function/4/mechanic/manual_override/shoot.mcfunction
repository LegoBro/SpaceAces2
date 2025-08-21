
## Optimize projectile by making the fire immediately apply instead of as a grenade

summon item_display ~ ~ ~ {Tags:["heat_blast","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["heat_blast","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
summon item_display ~ ~ ~ {Tags:["heat_blast","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored feet positioned ~ ~-.5 ~ run tp @e[type=minecraft:item_display,tag=heat_blast,tag=new,sort=nearest,limit=3,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=heat_blast,sort=nearest,tag=new,limit=3,distance=..3] at @s run function class:4/mechanic/manual_override/projectile
execute at @s run playsound entity.blaze.shoot hostile @a ~ ~ ~



return 1