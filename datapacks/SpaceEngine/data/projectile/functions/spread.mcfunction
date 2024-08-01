#Reduces Accuracy for use in projectiles
scoreboard players operation @s i = @e[sort=random,limit=1,tag=positioner] i
scoreboard players remove @s Numbers 1
execute if entity @s[scores={Numbers=0},tag=!upd_accuracy,tag=!warp,tag=!grenade] facing ^.1 ^ ^6 positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[scores={Numbers=0},tag=!upd_accuracy,tag=warp,tag=!grenade] facing ^.1 ^ ^6 positioned ^ ^ ^1.70 run function projectile:ray
execute if entity @s[scores={Numbers=0},tag=!upd_accuracy,tag=!warp,tag=grenade] facing ^.1 ^ ^6 positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[scores={Numbers=0},tag=!upd_accuracy,tag=warp,tag=grenade] facing ^.1 ^ ^6 positioned ~ ~-.25 ~ positioned ^ ^ ^1.70 run function projectile:ray
execute if entity @s[scores={i=1,Numbers=1..},tag=!upd_accuracy] facing ^ ^.1 ^6 run function projectile:spread
execute if entity @s[scores={i=2,Numbers=1..},tag=!upd_accuracy] facing ^ ^-.1 ^6 run function projectile:spread
execute if entity @s[scores={i=3,Numbers=1..},tag=!upd_accuracy] facing ^.1 ^ ^6 run function projectile:spread
execute if entity @s[scores={i=4,Numbers=1..},tag=!upd_accuracy] facing ^-.1 ^ ^6 run function projectile:spread
