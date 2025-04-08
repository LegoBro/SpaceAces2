summon item_display ~ ~ ~ {Tags:["stun","raycast","grenade","ignore.projectiles","new"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=stun,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=stun,tag=new,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~ ~ run function class:4/shocksmith/stun/projectile

playsound minecraft:block.dispenser.launch player @a ~ ~ ~ 1 2



return 1