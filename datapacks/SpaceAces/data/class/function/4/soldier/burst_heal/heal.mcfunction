
# Fail if already at full health, unless if in overhealth from healer
execute if score @s[tag=!maxless] health >= @s maxHealth run return 0
scoreboard players operation @s healing += class.soldier.2.heal_amount Numbers
scoreboard players operation heal_amount Numbers += class.soldier.2.heal_amount Numbers