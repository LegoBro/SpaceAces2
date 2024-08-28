effect give @s[nbt=!{SelectedItemSlot:8}] minecraft:mining_fatigue 1000000 100 true
execute as @s[nbt=!{SelectedItemSlot:8}] if entity @s[type=minecraft:player,predicate=effect:mining_fatigue] run function effect:mining_fatigue/check
return 1