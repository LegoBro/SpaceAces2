## Slowly damages player to remove effect of overheal
scoreboard players operation fireDamage Numbers = @s fire
scoreboard players operation fireDamage Numbers /= 10 Numbers
scoreboard players add fireDamage Numbers 1
scoreboard players operation @s[nbt=!{active_effects:[{id:"minecraft:fire_resistance"}]}] damage += fireDamage Numbers
scoreboard players operation @s fire -= fireDamage Numbers
particle minecraft:flame ~ ~1.25 ~ 0.5 0.5 0.5 0.01 5
scoreboard players reset @s fire_tick

return 1