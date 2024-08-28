#Reduces Accuracy for use in projectiles
scoreboard players operation @s i = @e[tag=positioner,sort=random,limit=1] i
scoreboard players remove @s Numbers 1
execute if entity @s[tag=!upd_accuracy,tag=!warp,tag=!grenade,scores={Numbers=0}] facing ^.1 ^ ^6 positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp,tag=!upd_accuracy,tag=!grenade,scores={Numbers=0}] facing ^.1 ^ ^6 positioned ^ ^ ^1.70 run function projectile:ray
execute if entity @s[tag=grenade,tag=!upd_accuracy,tag=!warp,scores={Numbers=0}] facing ^.1 ^ ^6 positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp,tag=grenade,tag=!upd_accuracy,scores={Numbers=0}] facing ^.1 ^ ^6 positioned ~ ~-.25 ~ positioned ^ ^ ^1.70 run function projectile:ray
execute if entity @s[tag=!upd_accuracy,scores={i=1,Numbers=1..}] facing ^ ^.1 ^6 run function projectile:spread
execute if entity @s[tag=!upd_accuracy,scores={i=2,Numbers=1..}] facing ^ ^-.1 ^6 run function projectile:spread
execute if entity @s[tag=!upd_accuracy,scores={i=3,Numbers=1..}] facing ^.1 ^ ^6 run function projectile:spread
execute if entity @s[tag=!upd_accuracy,scores={i=4,Numbers=1..}] facing ^-.1 ^ ^6 run function projectile:spread

return 1