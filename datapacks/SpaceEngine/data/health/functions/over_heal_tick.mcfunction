## Slowly damages player to remove effect of overheal
scoreboard players add @s over_heal_delay 1
scoreboard players operation overHealth Numbers = @s health
scoreboard players operation overHealth Numbers -= @s maxHealth
scoreboard players operation overHealth Numbers /= 20 Numbers
scoreboard players operation overHealth Numbers += 1 Numbers
scoreboard players operation @s[scores={over_heal_delay=20..}] health -= overHealth Numbers
scoreboard players reset @s[scores={over_heal_delay=20..}] over_heal_delay
