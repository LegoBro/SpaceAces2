summon minecraft:armor_stand ~ ~ ~ {Tags:["fire_bomb","raycast","grenade"],DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b,Marker:1b,Small:1b,Pose:{Head:[180.0f,0.0f,0.0f]}}
execute if entity @s[team=blue] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add blue
execute if entity @s[team=red] run tag @e[type=minecraft:armor_stand,tag=grenade,sort=nearest,limit=1] add red
execute if entity @s[scores={crouching=0}] run tp @e[tag=fire_bomb,sort=nearest,limit=1] ~ ~.6 ~ ~ ~
execute if entity @s[scores={crouching=1}] run tp @e[tag=fire_bomb,sort=nearest,limit=1] ~ ~.26 ~ ~ ~
execute store result score @e[tag=fire_bomb,sort=nearest,limit=1] id run scoreboard players get @s id
execute as @e[tag=fire_bomb,sort=nearest,limit=1] at @s positioned ~ ~1.25 ~ run function classes:pyro/fire_bomb/projectile
playsound minecraft:block.snow.break player @a ~ ~ ~ 1.0 2.0

return 1