## Throw da sword
summon item_display ~ ~ ~ {Tags:["sword_throw","new","class.brawler.thrown_sword","class.deployable"],teleport_duration:1}
execute anchored eyes run tp @e[type=minecraft:item_display,tag=sword_throw,tag=new,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
execute as @e[type=minecraft:item_display,tag=sword_throw,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/brawler/sword_throw/projectile

scoreboard players operation @s ability.2.cooldown += class.brawler.2.cooldown Numbers
scoreboard players reset @s rightClick

return 1