#Called when damage is taken, or when healing is applied; updates health

# These apply healing and damage
effect give @s minecraft:regeneration 3 1 true
scoreboard players operation testHealth Numbers = @s maxHealth
scoreboard players operation testHealth Numbers -= @s health
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches 0.. run scoreboard players operation @s[tag=!maxless] healing = testHealth Numbers
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches ..-1 run scoreboard players set @s[tag=!maxless] healing 0

## Damage display
execute if score @s healing matches 1.. run scoreboard players set @s damage_display -10

execute if score @s healing matches 1.. run function health:heal_indicator

#Display Health
scoreboard players operation @s displayHealth = @s health
scoreboard players operation @s displayHealth -= 2 Numbers
scoreboard players operation @s displayHealth *= 10 Numbers
scoreboard players operation @s displayHealth /= @s maxHealth


#Armor
execute if entity @s[tag=!entity] run function health:update


execute unless entity @s[tag=maxless] run return 1
# Player has overhealth active, calculate +100 based on their maxhealth
scoreboard players operation #newMaxHealth Numbers = @s maxHealth
scoreboard players add #newMaxHealth Numbers 100

execute if score @s health > #newMaxHealth Numbers run scoreboard players operation @s health = #newMaxHealth Numbers

return 1