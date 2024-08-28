effect clear @s minecraft:levitation
execute as @s if entity @s[type=minecraft:player] unless score @s effect.levitation_duration matches 0 run function effect:levitation/remove
return 1