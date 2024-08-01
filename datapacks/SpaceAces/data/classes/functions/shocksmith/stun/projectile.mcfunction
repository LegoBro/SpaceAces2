scoreboard players set @s damage 20
scoreboard players set @s speed 24
scoreboard players operation @s j = @s speed
execute if entity @s[tag=!warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^1.7 run function projectile:ray
