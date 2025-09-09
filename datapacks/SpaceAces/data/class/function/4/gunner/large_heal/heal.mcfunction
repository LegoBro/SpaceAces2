
# Fail if already at full health, unless if in overhealth from healer
execute if score @s[tag=!maxless] health >= @s maxHealth run return 0
scoreboard players add @s healing 2
scoreboard players add heal_amount Numbers 2