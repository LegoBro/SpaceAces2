execute if entity @s[team=blue] run effect give @a[distance=..5,team=blue] minecraft:speed 5 1 true
execute if entity @s[team=blue] run effect give @a[distance=..5,team=blue] minecraft:saturation 1 4 true
execute if entity @s[team=red] run effect give @a[distance=..5,team=red] minecraft:speed 5 1 true
execute if entity @s[team=red] run effect give @a[distance=..5,team=red] minecraft:saturation 1 4 true
playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1 1

return 1