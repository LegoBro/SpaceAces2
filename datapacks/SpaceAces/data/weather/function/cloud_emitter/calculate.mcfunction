## Calculates lifespan based on Density, Speed and Size

# Expected Value for 4size, 0 density, 0 speed (0.01b/t) = 400t
# 8size 1 Speed = .02

scoreboard players set @s weather.lifespan 1

## Possible Sizes: 4x4,8x8,16x16,32x32

execute if score @s weather.size matches 0 run scoreboard players operation @s weather.lifespan *= 4 Numbers
execute if score @s weather.size matches 1 run scoreboard players operation @s weather.lifespan *= 8 Numbers
execute if score @s weather.size matches 2 run scoreboard players operation @s weather.lifespan *= 16 Numbers
execute if score @s weather.size matches 3 run scoreboard players operation @s weather.lifespan *= 32 Numbers

# Possible Speeds 0.01-.1 (.2b/s - 2b/s)

scoreboard players operation @s weather.lifespan *= 100 Numbers

scoreboard players operation #speed_math weather.speed = @s weather.speed
scoreboard players add #speed_math weather.speed 1

scoreboard players operation @s weather.lifespan /= #speed_math weather.speed
#scoreboard players operation @s weather.lifespan *= 100 Numbers
#scoreboard players operation #speed_math weather.speed /= 1000 Numbers

# Speed 1, Size 2 = work

# speed 2, Size 2 = 50% gap

# Speed 3, Size 2 = 100% Gap

# Speed 4, Size 2 = 150% Gap