#Activated every block, rather than every 1/16 of a block
scoreboard players remove @s[scores={falloffStart=1..}] falloffStart 1
execute if score @s falloffStart matches 0 run scoreboard players operation @s damage -= @s falloff
particle mycelium ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @s i 0
#tp @s ~ ~ ~
#execute unless entity @e[distance=..4,tag=!raycast,tag=!ignore] if block ^ ^ ^.0625 #projectile:ignore_all if block ^ ^ ^.125 #projectile:ignore_all if block ^ ^ ^.1875 #projectile:ignore_all if block ^ ^ ^.25 #projectile:ignore_all if block ^ ^ ^.3125 #projectile:ignore_all if block ^ ^ ^.375 #projectile:ignore_all if block ^ ^ ^.4375 #projectile:ignore_all if block ^ ^ ^.5 #projectile:ignore_all if block ^ ^ ^.5625 #projectile:ignore_all if block ^ ^ ^.625 #projectile:ignore_all if block ^ ^ ^.6875 #projectile:ignore_all if block ^ ^ ^.75 #projectile:ignore_all if block ^ ^ ^.8125 #projectile:ignore_all if block ^ ^ ^.875 #projectile:ignore_all if block ^ ^ ^.9375 #projectile:ignore_all if block ^ ^ ^1 #projectile:ignore_all positioned ^ ^ ^1 run function projectile:subray
