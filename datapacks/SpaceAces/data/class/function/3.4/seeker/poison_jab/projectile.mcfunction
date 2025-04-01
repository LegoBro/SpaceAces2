scoreboard players set @s damage 20
scoreboard players set @s speed 12
scoreboard players set @s falloff 1
scoreboard players set @s falloffStart 1
scoreboard players operation @s j = @s speed
execute if entity @s[tag=!warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^1.7 run function projectile:ray

return 1