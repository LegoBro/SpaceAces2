#Called when damage is taken, or when healing is applied; updates health

# These apply healing and damage
effect give @s regeneration 3 1 true
scoreboard players operation testHealth Numbers = @s maxHealth
scoreboard players operation testHealth Numbers -= @s health
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches 0.. run scoreboard players operation @s[tag=!maxless] healing = testHealth Numbers
execute if score testHealth Numbers < @s healing if score testHealth Numbers matches ..-1 run scoreboard players set @s[tag=!maxless] healing 0

execute if score @s healing matches 1.. run function health:heal_indicator

#Display Health
scoreboard players operation @s displayHealth = @s health
scoreboard players operation @s displayHealth -= 2 Numbers
scoreboard players operation @s displayHealth *= 10 Numbers
scoreboard players operation @s displayHealth /= @s maxHealth


#Armor
execute if entity @s[team=blue,tag=!entity] run function health:update_armor_blue
execute if entity @s[team=red,tag=!entity] run function health:update_armor_red
execute if score @s health matches 901.. run scoreboard players set @s health 900
