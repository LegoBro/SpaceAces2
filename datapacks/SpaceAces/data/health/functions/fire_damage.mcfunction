## Slowly damages player to remove effect of overheal
scoreboard players operation fireDamage Numbers = @s fire
scoreboard players operation fireDamage Numbers /= 10 Numbers
scoreboard players add fireDamage Numbers 1
scoreboard players operation @s[nbt=!{ActiveEffects:[{Id:12b}]}] damage += fireDamage Numbers
scoreboard players operation @s fire -= fireDamage Numbers
particle flame ~ ~1.25 ~ 0.5 0.5 0.5 0.01 5
scoreboard players reset @s fire_tick
