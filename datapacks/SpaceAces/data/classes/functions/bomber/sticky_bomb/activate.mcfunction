## Throw the vis mine
summon armor_stand ~ ~ ~ {Tags:["standby_sticky_bomb","sticky_bomb","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180f,0f,0f]}}
execute if entity @s[team=blue] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add blue
execute if entity @s[team=red] run tag @e[type=armor_stand,tag=grenade,limit=1,sort=nearest] add red
execute if entity @s[scores={crouching=0}] run tp @e[tag=sticky_bomb,limit=1,sort=nearest] ~ ~.6 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[tag=sticky_bomb,limit=1,sort=nearest] ~ ~.26 ~ ~ ~
execute store result score @e[tag=sticky_bomb,limit=1,sort=nearest] id run scoreboard players get @s id
execute as @e[tag=sticky_bomb,limit=1,sort=nearest] at @s positioned ~ ~1.25 ~ run function classes:bomber/sticky_bomb/projectile
playsound minecraft:gun.launcher master @a ~ ~ ~ 1.0 0.0
