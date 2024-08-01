scoreboard players set @s damage 50
scoreboard players set @s falloff 5
scoreboard players set @s falloffStart 0
scoreboard players set @s speed 0
scoreboard players operation @s j = @s speed
execute if entity @s[tag=!warp] positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp] positioned ^ ^ ^1.7 run function projectile:ray
