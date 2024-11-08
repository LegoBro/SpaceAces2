scoreboard players set @s damage 5
execute if entity @s[scores={damageMultiplier=-200..}] run function projectile:damage_multiplier
item replace entity @s container.0 with minecraft:paper[custom_model_data=11120004]
scoreboard players set @s arcRate -5
scoreboard players set @s speed 12
scoreboard players operation @s j = @s speed
execute store result storage projectile SpreadX float 0.5 run random value -10..10
execute store result storage projectile SpreadY float 0.5 run random value -10..10
function projectile:spread with storage projectile

return 1