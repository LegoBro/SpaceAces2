
scoreboard players set @s shoot 1
scoreboard players remove @s totalShots 1
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1

summon item_display ~ ~ ~ {Tags:["standby_sticky_bomb","sticky_bomb","raycast","grenade"],teleport_duration:1}
scoreboard players operation @n[type=minecraft:item_display,tag=grenade,sort=nearest,limit=1,distance=..3] Team = @s Team
execute if entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] store result score @e[type=minecraft:item_display,sort=nearest,limit=1,distance=..3] damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier
execute anchored eyes run tp @e[type=minecraft:item_display,tag=sticky_bomb,sort=nearest,limit=1,distance=..3] ^ ^ ^ ~ ~
scoreboard players operation @n[type=minecraft:item_display,tag=sticky_bomb,sort=nearest,limit=1,distance=..3] id = @s id
execute as @e[type=minecraft:item_display,tag=sticky_bomb,sort=nearest,limit=1,distance=..3] at @s positioned ~ ~.25 ~ run function classes:bomber/sticky_bomb/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0
return 1