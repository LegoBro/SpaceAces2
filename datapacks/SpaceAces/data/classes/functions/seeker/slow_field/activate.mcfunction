execute if entity @s[team=blue] run effect give @e[team=red,distance=..7] slowness 3 2 true
execute if entity @s[team=red] run effect give @e[team=blue,distance=..7] slowness 3 2 true
execute if entity @s[team=blue] at @a[team=red] run particle falling_dust gray_terracotta ~ ~ ~ 0.3 1.3 .3 .2 50 force @a
execute if entity @s[team=red] at @a[team=blue] run particle falling_dust gray_terracotta ~ ~ ~ 0.3 1.3 .3 .2 50 force @a
playsound minecraft:block.bubble_column.whirlpool_inside player @a ~ ~ ~ 1 2
