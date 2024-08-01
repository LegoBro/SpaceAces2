#Called when damage is taken, or when healing is applied; updates health

#Display Health
scoreboard players operation @s[tag=!entity] displayHealth = @s health
scoreboard players operation @s[tag=!entity] displayHealth -= 2 Numbers
scoreboard players operation @s[tag=!entity] displayHealth *= 10 Numbers
scoreboard players operation @s[tag=!entity] displayHealth /= @s maxHealth
