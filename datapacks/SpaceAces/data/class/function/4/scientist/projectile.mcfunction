scoreboard players set @s damage 5
execute unless score @s damageMultiplier matches 0 run function projectile:damage_multiplier
item replace entity @s container.0 with minecraft:paper[item_model="scientist/grenade"]
scoreboard players set @s arcRate 3
scoreboard players set @s speed 16
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -15..15
execute store result storage projectile SpreadY float 0.5 run random value -15..15
function projectile:spread with storage projectile
#execute unless entity @s[scores={Numbers=0..}] positioned ~ ~-.25 ~ run function projectile:ray
return 1