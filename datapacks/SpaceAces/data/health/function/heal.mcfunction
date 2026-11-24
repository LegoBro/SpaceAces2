#Called when damage is taken, or when healing is applied; updates health

# These apply healing and damage
scoreboard players operation testHealth Numbers = @s maxHealth
scoreboard players operation testHealth Numbers -= @s health
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches 0.. run scoreboard players operation @s[tag=!maxless] healing = testHealth Numbers
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches ..-1 run scoreboard players set @s[tag=!maxless] healing 0

## Damage display
execute if score @s healing matches 1.. run scoreboard players set @s damage_display -10

execute if score @s healing matches 1.. run function health:indicator/heal


execute if score @s healing matches ..3 run particle minecraft:heart ~ ~0.25 ~ 0.1 0.1 0.1 0 1
execute if score @s healing matches 4..15 run particle minecraft:heart ~ ~0.25 ~ 0.2 0.2 0.2 0 2
execute if score @s healing matches 16.. run particle minecraft:heart ~ ~0.25 ~ 0.3 0.3 0.3 0 3


execute if score @s healing matches 1.. run scoreboard players operation @s health += @s healing
execute if score @s healing matches 1.. run scoreboard players operation @s stat.game.healing_received += @s healing
execute if score @s healing matches 1.. run scoreboard players set @s healing 0

#Display Health
scoreboard players operation @s displayHealth = @s health
scoreboard players operation @s displayHealth *= 100 Numbers
scoreboard players operation @s displayHealth /= @s maxHealth


execute unless entity @s[tag=maxless] run return 1
# Player has overhealth active, calculate +100 based on their maxhealth
scoreboard players operation #newMaxHealth Numbers = @s maxHealth
scoreboard players add #newMaxHealth Numbers 100

execute if score @s health > #newMaxHealth Numbers run scoreboard players operation @s health = #newMaxHealth Numbers

return 1