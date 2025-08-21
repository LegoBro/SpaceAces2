summon item_display ~ ~ ~ {Tags:["rocket","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=rocket,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=rocket,sort=nearest,tag=new,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/rocketeer/primary/projectile
execute at @s run playsound minecraft:gun.rocket hostile @a ~ ~ ~
return 1