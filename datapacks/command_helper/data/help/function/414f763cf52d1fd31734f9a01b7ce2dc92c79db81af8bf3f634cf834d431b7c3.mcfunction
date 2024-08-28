effect give @s minecraft:levitation 1 30 true
execute as @s if entity @s[type=minecraft:player,predicate=effect:levitation] run function effect:levitation/check
return 1