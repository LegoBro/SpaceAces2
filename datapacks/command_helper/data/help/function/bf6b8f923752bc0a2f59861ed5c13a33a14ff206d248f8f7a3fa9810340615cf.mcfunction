effect clear @a[tag=escape,nbt={SelectedItemSlot:8}] minecraft:mining_fatigue
execute as @a[tag=escape,nbt={SelectedItemSlot:8}] if entity @s[type=minecraft:player] unless score @s effect.mining_fatigue_duration matches 0 run function effect:mining_fatigue/remove
return 1