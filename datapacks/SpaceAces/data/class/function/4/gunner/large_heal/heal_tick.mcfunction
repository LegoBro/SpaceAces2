execute if score @s[tag=!maxless] health >= @s maxHealth run return 0
scoreboard players add @s healing 2
scoreboard players add @s stat.game.healing_dealt 2
scoreboard players add @s ultimate_charge 2