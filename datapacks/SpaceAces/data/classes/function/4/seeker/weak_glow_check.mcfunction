## Calculates if a player should glow weak

scoreboard players operation #test Numbers = @s maxHealth

scoreboard players operation #test Numbers *= 25 Numbers
scoreboard players operation #test Numbers /= 100 Numbers

execute if score @s health <= #test Numbers run effect give @s glowing 1 0 true