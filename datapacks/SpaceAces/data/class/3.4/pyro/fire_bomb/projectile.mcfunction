scoreboard players set @s damage 10
scoreboard players set @s speed 12
scoreboard players set @s arcRate 10
scoreboard players operation @s j = @s speed
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:paper",components:{"item_model":"pyro/grenade"},count:1}]}
execute if entity @s[tag=!warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^.40 run function projectile:ray
execute if entity @s[tag=warp] unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ positioned ^ ^ ^1.7 run function projectile:ray

return 1